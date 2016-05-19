#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
以Naive Bayes找出擁有某些屬性者可歸類到那一個類別。 
'''
from __future__ import division
from __future__ import print_function

class Classifier(object):
    def __init__(self, file_name):
        self.datas = []
        with open(file_name, "rb") as f:
            for line in f:
                self.datas.append(line.strip().split('\t'))

    def getModels(self):
        models = set()
        for item in self.datas:
            models.add(item[4])
        return models
        
    def classify(self, itemVector):
        result = []
        info = {}
        for model in self.getModels():
            info.clear()
            info.setdefault("total", len(self.datas))
            info.setdefault("model", 0)
            for data in self.datas:
                if model == data[4]:
                    info["model"] += 1
                for i, item in enumerate(itemVector):
                    if model == data[4] and item == data[i]:
                        info.setdefault(i, 0)
                        info[i] += 1
            result.append((model, (info[0]/info["model"])*(info[1]/info["model"])*(info[2]/info["model"])*(info[3]/info["model"])*(info["model"]/info["total"])))
        result.sort(key=lambda singleTuple : singleTuple[1], reverse=True)
        return result[0][0]
    
if __name__ == '__main__':
    c = Classifier("iHealth/i-01")
    print(c.classify(['health', 'moderate', 'moderate', 'yes']))   
