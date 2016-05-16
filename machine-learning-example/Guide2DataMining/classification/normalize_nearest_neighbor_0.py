#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
將評分以中位數正規化後，以manhattan距離找出最近的項目item(O)，並以最近的項目item(O)的分類為目標項目item(T)的分類，並顯示test dataset的分類結果。
'''
from __future__ import division
from __future__ import print_function

class Classifier(object):
    def __init__(self, filename):
        self.medianAndDeviation = []
        f = open(filename)
        lines = f.readlines()
        f.close()
        self.format = lines[0].strip().split('\t')
        self.data = []
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
        
#         print(self.data)
        
        vlen = len(self.data[0][1])
        for i in range(vlen):
            self.normalizeColumn(i)

    def getMedian(self, alist):
        if alist == []:
            return []
        blist = sorted(alist)
        length = len(alist)
        if length % 2 == 1:
            return blist[int(((length + 1) / 2) -  1)]
        else:
            v1 = blist[int(length / 2)]
            v2 = blist[(int(length / 2) - 1)]
            return (v1 + v2) / 2.0
     
    def getAbsoluteStandardDeviation(self, alist, median):
        sum_ = 0
        for item in alist:
            sum_ += abs(item - median)
        return sum_ / len(alist)
      
    def normalizeColumn(self, columnNumber):
        col = [v[1][columnNumber] for v in self.data]
        median = self.getMedian(col)
        asd = self.getAbsoluteStandardDeviation(col, median)
        self.medianAndDeviation.append((median, asd))
        for v in self.data:
            v[1][columnNumber] = (v[1][columnNumber] - median) / asd
             
    def manhattan(self, vector1, vector2):
        return sum(map(lambda v1, v2: abs(v1 - v2), vector1, vector2))

    def nearestNeighbor(self, itemVector):
        return min([(self.manhattan(itemVector, item[1]), item) for item in self.data])

    def normalizeVector(self, v):
        vector = list(v)
        for i in range(len(vector)):
            (median, asd) = self.medianAndDeviation[i]
            vector[i] = (vector[i] - median) / asd
        return vector

    def classify(self, itemVector):
        return(self.nearestNeighbor(self.normalizeVector(itemVector))[1][0])

if __name__ == '__main__':
    classifier = Classifier("athletesTrainingSet.txt")
    f = open("athletesTestSet.txt")
    lines = f.readlines()
    f.close()
    numCorrect = 0.0
    for line in lines:
        data = line.strip().split('\t')
        vector = []
        classInColumn = -1
        for i in range(len(classifier.format)):
            if classifier.format[i] == 'num':
                vector.append(float(data[i]))
            elif classifier.format[i] == 'class':
                classInColumn = i
        theClass= classifier.classify(vector)
        prefix = '-'
        if theClass == data[classInColumn]:
            numCorrect += 1
            prefix = '+'
        print("%s  %12s  %s" % (prefix, theClass, line))
    print("%4.2f%% correct" % (numCorrect * 100/ len(lines)))
    