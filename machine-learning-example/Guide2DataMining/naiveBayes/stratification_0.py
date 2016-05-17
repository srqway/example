#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
將資料分成10層，其中9層為training set，1層為test set。以training set訓練完後的資料測試test set，並將最終的測試結果顯示出來。
'''
from __future__ import division
from __future__ import print_function
import heapq
import random

class Classifier(object):
    def __init__(self, bucketPrefix, testBucketNumber, dataFormat):
        total = 0
        classes = {}
        counts = {}
        self.format = dataFormat.strip().split('\t')
        self.prior = {}
        self.conditional = {}
        for i in range(1, 11):
            if i != testBucketNumber:
                filename = "%s-%02i" % (bucketPrefix, i)
                f = open(filename)
                lines = f.readlines()
                f.close()
                for line in lines:
                    fields = line.strip().split('\t')
                    ignore = []
                    vector = []
                    for i in range(len(fields)):
                        if self.format[i] == 'num':
                            vector.append(float(fields[i]))
                        elif self.format[i] == 'attr':
                            vector.append(fields[i])
                        elif self.format[i] == 'comment':
                            ignore.append(fields[i])
                        elif self.format[i] == 'class':
                            category = fields[i]
                    total += 1
                    classes.setdefault(category, 0)
                    counts.setdefault(category, {})
                    classes[category] += 1
                    col = 0
                    for columnValue in vector:
                        col += 1
                        counts[category].setdefault(col, {})
                        counts[category][col].setdefault(columnValue,0)
                        counts[category][col][columnValue] += 1
                    for (category, count) in classes.items():
                        self.prior[category] = count / total
                    for (category, columns) in counts.items():
                        self.conditional.setdefault(category, {})
                        for (col, valueCounts) in columns.items():
                            self.conditional[category].setdefault(col, {})
                            for (attrValue, count) in valueCounts.items():
                                self.conditional[category][col][attrValue] = (count / classes[category])

    def classify(self, itemVector):
        results = []
        for (category, prior) in self.prior.items():
            prob = prior
            col = 1
            for attrValue in itemVector:
                if not attrValue in self.conditional[category][col]:
                    prob = 0
                else:
                    prob = prob * self.conditional[category][col][attrValue]
                    col += 1
            results.append((prob, category))
        return(max(results)[1])
            
if __name__ == '__main__':
    bucketPrefix = "iHealth/i"
    testBucketNumber = 10
    dataFormat = "attr\tattr\tattr\tattr\tclass"
    c = Classifier(bucketPrefix, testBucketNumber, dataFormat)
    print(c.classify(['health', 'moderate', 'moderate', 'yes']))   
