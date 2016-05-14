#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function
import heapq
import random

class Classifier(object):
    def __init__(self, bucketPrefix, testBucketNumber, dataFormat, k):
        self.medianAndDeviation = []
        self.k = k
        self.format = dataFormat.strip().split('\t')
        self.data = []           
        for i in range(1, 11):
            if i != testBucketNumber:
                filename = "%s-%02i" % (bucketPrefix, i)
                f = open(filename)
                lines = f.readlines()
                f.close()
                for line in lines[1:]:
                    fields = line.strip().split('\t')
                    ignore = []
                    vector = []
                    for i in range(len(fields)):
                        if self.format[i] == 'num':
                            vector.append(float(fields[i]))
                        elif self.format[i] == 'comment':
                            ignore.append(fields[i])
                        elif self.format[i] == 'class':
                            classification = fields[i]
                    self.data.append((classification, vector, ignore))
        self.rawData = list(self.data)
        self.vlen = len(self.data[0][1])
        for i in range(self.vlen):
            self.normalizeColumn(i)

    def getMedian(self, alist):
        """return median of alist"""
        if alist == []:
            return []
        blist = sorted(alist)
        length = len(alist)
        if length % 2 == 1:
            return blist[int(((length + 1) / 2) -  1)]
        else:
            v1 = blist[int(length / 2)]
            v2 =blist[(int(length / 2) - 1)]
            return (v1 + v2) / 2.0
        
    def normalizeColumn(self, columnNumber):
        col = [v[1][columnNumber] for v in self.data]
        median = self.getMedian(col)
        asd = self.getAbsoluteStandardDeviation(col, median)
        self.medianAndDeviation.append((median, asd))
        for v in self.data:
            v[1][columnNumber] = (v[1][columnNumber] - median) / asd
           
    def getAbsoluteStandardDeviation(self, alist, median):
        sum_ = 0
        for item in alist:
            sum_ += abs(item - median)
        return sum_ / len(alist)

    def manhattan(self, vector1, vector2):
        """Computes the Manhattan distance."""
        return sum(map(lambda v1, v2: abs(v1 - v2), vector1, vector2))

    def knn(self, itemVector):
        neighbors = heapq.nsmallest(self.k, [(self.manhattan(itemVector, item[1]), item) for item in self.data])
        # each neighbor gets a vote
        results = {}
        for neighbor in neighbors: 
            theClass = neighbor[1][0]
            results.setdefault(theClass, 0)
            results[theClass] += 1
        resultList = sorted([(i[1], i[0]) for i in results.items()], reverse=True)
        #get all the classes that have the maximum votes
        maxVotes = resultList[0][0]
        possibleAnswers = [i[1] for i in resultList if i[0] == maxVotes]
        # randomly select one of the classes that received the max votes
        answer = random.choice(possibleAnswers)
        return( answer)
    
    def normalizeVector(self, v):
        """We have stored the median and asd for each column.
        We now use them to normalize vector v"""
        vector = list(v)
        for i in range(len(vector)):
            (median, asd) = self.medianAndDeviation[i]
            vector[i] = (vector[i] - median) / asd
        return vector
    
    def classify(self, itemVector):
        return(self.knn(self.normalizeVector(itemVector)))  
    
    def testBucket(self, bucketPrefix, bucketNumber):
        """Evaluate the classifier with data from the file
        bucketPrefix-bucketNumber"""
        
        filename = "%s-%02i" % (bucketPrefix, bucketNumber)
        f = open(filename)
        lines = f.readlines()
        totals = {}
        f.close()
        for line in lines:
            data = line.strip().split('\t')
            vector = []
            classInColumn = -1
            for i in range(len(self.format)):
                  if self.format[i] == 'num':
                      vector.append(float(data[i]))
                  elif self.format[i] == 'class':
                      classInColumn = i
            theRealClass = data[classInColumn]
            #print("REAL ", theRealClass)
            classifiedAs = self.classify(vector)
            totals.setdefault(theRealClass, {})
            totals[theRealClass].setdefault(classifiedAs, 0)
            totals[theRealClass][classifiedAs] += 1
        return totals
    
if __name__ == '__main__':
    bucketPrefix = "mpgData"
    dataFormat = "class\tnum\tnum\tnum\tnum\tnum\tcomment"
    k = 3
    results = {}
    for i in range(1, 11):
        c = Classifier(bucketPrefix, i, dataFormat, k)
        t = c.testBucket(bucketPrefix, i)
        for (key, value) in t.items():
            results.setdefault(key, {})
            for (ckey, cvalue) in value.items():
                results[key].setdefault(ckey, 0)
                results[key][ckey] += cvalue
    categories = list(results.keys())
    categories.sort()
    print(   "\n       Classified as: ")
    header =    "        "
    subheader = "      +"
    for category in categories:
        header += "% 2s   " % category
        subheader += "-----+"
    print (header)
    print (subheader)
    total = 0.0
    correct = 0.0
    for category in categories:
        row = " %s    |" % category 
        for c2 in categories:
            if c2 in results[category]:
                count = results[category][c2]
            else:
                count = 0
            row += " %3i |" % count
            total += count
            if c2 == category:
                correct += count
        print(row)
    print(subheader)
    print("\n%5.3f percent correct" %((correct * 100) / total))
    print("total of %i instances" % total)
    