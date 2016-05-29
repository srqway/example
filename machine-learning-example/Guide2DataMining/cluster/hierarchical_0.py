#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function
from Queue import PriorityQueue
import math

class hClusterer:
    def __init__(self, filename):
        file = open(filename)
        self.data = {}
        self.counter = 0
        self.queue = PriorityQueue()
        lines = file.readlines()
        file.close()
        header = lines[0].split(',')
        self.cols = len(header)
        self.data = [[] for i in range(len(header))]
        for line in lines[1:]:
            cells = line.split(',')
            toggle = 0
            for cell in range(self.cols):
                if toggle == 0:
                    self.data[cell].append(cells[cell])
                    toggle = 1
                else:
                    self.data[cell].append(float(cells[cell]))
        for i in range(1, self.cols):
                self.data[i] = normalizeColumn(self.data[i])    
        rows = len(self.data[0])              
        for i in range(rows):
            minDistance = 99999
            nearestNeighbor = 0
            neighbors = {}
            for j in range(rows):
                if i != j:
                    dist = self.distance(i, j)
                    if i < j:
                        pair = (i,j)
                    else:
                        pair = (j,i)
                    neighbors[j] = (pair, dist)
                    if dist < minDistance:
                        minDistance = dist
                        nearestNeighbor = j
            if i < nearestNeighbor:
                nearestPair = (i, nearestNeighbor)
            else:
                nearestPair = (nearestNeighbor, i)  
            self.queue.put((minDistance, self.counter,
                            [[self.data[0][i]], nearestPair, neighbors]))
            self.counter += 1

    def distance(self, i, j):
        sumSquares = 0
        for k in range(1, self.cols):
            sumSquares += (self.data[k][i] - self.data[k][j])**2
        return math.sqrt(sumSquares)

    def cluster(self):
        done = False
        while not done:
            topOne = self.queue.get()
            nearestPair = topOne[2][1]
            if not self.queue.empty():
                nextOne = self.queue.get()
                nearPair = nextOne[2][1]
                tmp = []
                while nearPair != nearestPair:
                    tmp.append((nextOne[0], self.counter, nextOne[2]))
                    self.counter += 1
                    nextOne = self.queue.get()
                    nearPair = nextOne[2][1]               
                for item in tmp:
                    self.queue.put(item) 
                if len(topOne[2][0]) == 1:
                    item1 = topOne[2][0][0]
                else:
                    item1 = topOne[2][0]
                if len(nextOne[2][0]) == 1:
                    item2 = nextOne[2][0][0]
                else:
                    item2 = nextOne[2][0]
                curCluster = (item1, item2)
                minDistance = 99999
                nearestPair = ()
                merged = {}
                nNeighbors = nextOne[2][2]
                for (key, value) in topOne[2][2].items():
                    if key in nNeighbors:
                        if nNeighbors[key][1] < value[1]:
                            dist =  nNeighbors[key]
                        else:
                            dist = value
                        if dist[1] < minDistance:
                            minDistance =  dist[1]
                            nearestPair = dist[0]
                        merged[key] = dist                    
                if merged == {}:
                    return curCluster
                else:
                    self.queue.put( (minDistance, self.counter,
                                     [curCluster, nearestPair, merged]))
                    self.counter += 1
                               
def normalizeColumn(column):
    median = getMedian(column)
    asd = sum([abs(x - median) for x in column]) / len(column)
    result = [(x - median) / asd for x in column]
    return result             

def getMedian(alist):
    tmp = list(alist)
    tmp.sort()
    alen = len(tmp)
    if (alen % 2) == 1:
        return tmp[alen // 2]
    else:
        return (tmp[alen // 2] + tmp[(alen // 2) - 1]) / 2

def printDendrogram(T, sep=3):
    def isPair(T):
        return type(T) == tuple and len(T) == 2
    
    def maxHeight(T):
        if isPair(T):
            h = max(maxHeight(T[0]), maxHeight(T[1]))
        else:
            h = len(str(T))
        return h + sep
        
    activeLevels = {}

    def traverse(T, h, isFirst):
        if isPair(T):
            traverse(T[0], h-sep, 1)
            s = [' ']*(h-sep)
            s.append('|')
        else:
            s = list(str(T))
            s.append(' ')

        while len(s) < h:
            s.append('-')
        
        if (isFirst >= 0):
            s.append('+')
            if isFirst:
                activeLevels[h] = 1
            else:
                del activeLevels[h]
        
        A = list(activeLevels)
        A.sort()
        for L in A:
            if len(s) < L:
                while len(s) < L:
                    s.append(' ')
                s.append('|')

        print (''.join(s))    
        
        if isPair(T):
            traverse(T[1], h-sep, 0)

    traverse(T, maxHeight(T), -1)

filename = 'data/dogs.csv'
hg = hClusterer(filename)
cluster = hg.cluster()
printDendrogram(cluster)