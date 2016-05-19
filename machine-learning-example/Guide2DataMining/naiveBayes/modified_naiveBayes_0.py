#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
以Naive Bayes找出擁有某些屬性者可歸類到那一個類別。 
'''
from __future__ import division
from __future__ import print_function

class Classifier(object):
    def __init__(self, data):
        self.data = data
        
    def getModifiedPercent(self, party, yn, index):
        nc = self.data[party][yn][index]
        m = self.data["Choice"]
        p = self.data[party]["SubTotal"] / self.data["Total"]
        n = self.data[party]["SubTotal"]
        return (nc + (m * p)) / (n + m)
        
    def classify(self, vals):
        results = []
        for party in ["Republican", "Democratic"]:
            result = 1
            for i, val in enumerate(vals):
                result *= self.getModifiedPercent(party, val, i)
            result *= (self.data[party]["SubTotal"] / self.data["Total"])
            results.append((party, result))
        results.sort(key = lambda singleTuple : singleTuple[1], reverse=True)
        return results[0][0]
    
if __name__ == '__main__':
    data = {
        "Total" : 200,
        "Choice" : 2,
        "Republican" : {
            "SubTotal" : 100,
            "Percent" : 0.5,
            "Yes" : [99, 1, 99, 50],
            "No" : [1, 99, 1, 50]
        },
        "Democratic" : {
            "SubTotal" : 100,
            "Percent" : 0.5,
            "Yes" : [1, 99, 1, 100],
            "No" : [99, 1, 99, 0]
        }
    }
    c = Classifier(data)
    print(c.classify(['No', 'Yes', 'No', 'No']))   
