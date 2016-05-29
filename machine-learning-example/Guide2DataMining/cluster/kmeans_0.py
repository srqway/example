#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
step 1 of above algorithm: select k random instances to be initial centroids.
step 2: assign each instance to the nearest centroid
step 3: update centroids
step 4: until the centroids don’t move much or we have reached some maximum number of iterations.
'''
from __future__ import division
from __future__ import print_function
import math
import random 

class kClusterer:
    def __init__(self, filename, k):
        file = open(filename)
        self.data = {}
        self.k = k
        self.counter = 0
        self.iterationNumber = 0
        self.pointsChanged = 0
        self.sse = 0
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
                    
        self.datasize = len(self.data[1])
        self.memberOf = [-1 for x in range(len(self.data[1]))]
        for i in range(1, self.cols):
                self.data[i] = normalizeColumn(self.data[i])
        random.seed()
        self.centroids = [[self.data[i][r]  for i in range(1, len(self.data))]
                           for r in random.sample(range(len(self.data[0])),
                                                 self.k)]
        self.assignPointsToCluster()

    def updateCentroids(self):
        members = [self.memberOf.count(i) for i in range(len(self.centroids))]
        self.centroids = [[sum([self.data[k][i]
                                for i in range(len(self.data[0]))
                                if self.memberOf[i] == centroid])/members[centroid]
                           for k in range(1, len(self.data))]
                          for centroid in range(len(self.centroids))] 

    def assignPointToCluster(self, i):
        min = 999999
        clusterNum = -1
        for centroid in range(self.k):
            dist = self.euclideanDistance(i, centroid)
            if dist < min:
                min = dist
                clusterNum = centroid
        if clusterNum != self.memberOf[i]:
            self.pointsChanged += 1
        self.sse += min**2
        return clusterNum

    def assignPointsToCluster(self):
        self.pointsChanged = 0
        self.sse = 0
        self.memberOf = [self.assignPointToCluster(i)
                         for i in range(len(self.data[1]))]

    def euclideanDistance(self, i, j):
        sumSquares = 0
        for k in range(1, self.cols):
            sumSquares += (self.data[k][i] - self.centroids[j][k-1])**2
        return math.sqrt(sumSquares)

    def kCluster(self):
        done = False
 
        while not done:
            self.iterationNumber += 1
            self.updateCentroids()
            self.assignPointsToCluster()
            if float(self.pointsChanged) / len(self.memberOf) <  0.01:
                done = True
        print("Final SSE: %f" % self.sse)

    def showMembers(self):
        for centroid in range(len(self.centroids)):
            print ("\n\nClass %i\n========" % centroid)
            for name in [self.data[0][i]  for i in range(len(self.data[0]))
                          if self.memberOf[i] == centroid]:
                print (name)

def getMedian(alist):
    tmp = list(alist)
    tmp.sort()
    alen = len(tmp)
    if (alen % 2) == 1:
        return tmp[alen // 2]
    else:
        return (tmp[alen // 2] + tmp[(alen // 2) - 1]) / 2
    

def normalizeColumn(column):
    median = getMedian(column)
    asd = sum([abs(x - median) for x in column]) / len(column)
    result = [(x - median) / asd for x in column]
    return result

km = kClusterer('data/dogs.csv', 3)
km.kCluster()
km.showMembers()