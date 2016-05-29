#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
計算目標項目item(T)與其他項目item(O)的平均差異，將該使用者對其他項目item(0)的評分加上平均差異後做加權。
'''
from __future__ import division
from __future__ import print_function

class Recommender(object):
    def __init__(self, users):
        self.users = users
        
    def getAverageDeviation(self, targetItem, otherItem):
        deviation = 0;
        n = 0
        for singerScores in self.users.values():
            if not targetItem in singerScores:
                continue
            if not otherItem in singerScores:
                continue
            targetItemScore = 0
            otherItemScore = 0
            for key in singerScores:
                if key == targetItem:
                    targetItemScore = singerScores[key]
                if key == otherItem:
                    otherItemScore = singerScores[key]
            deviation += (targetItemScore - otherItemScore)
            n += 1
        return deviation / n

    def getAllSingers(self):
        singers = []
        for user in self.users:
            singers = singers + self.users[user].keys()
        return set(singers)
        
    def getScoredUserAmount(self, singer):
        amount = 0
        for item in self.users.values():
            if singer in item:
                amount += 1
        return amount
        
    def getSlopeOneRecommendations(self, user):
        recommendations = []
        allSingers = self.getAllSingers()
        scoredSingers = set(self.users[user].keys())
        unscoredSingers = allSingers - scoredSingers
        for unscoredSinger in unscoredSingers:
            numerator = 0
            denominator = 0
            for scoredSinger in scoredSingers:
                averageDeviation = self.getAverageDeviation(unscoredSinger, scoredSinger)
                userScore = self.users[user][scoredSinger]
                scoredUserAmount = self.getScoredUserAmount(unscoredSinger)
                numerator += (averageDeviation + userScore) * scoredUserAmount
                denominator += scoredUserAmount
            recommendations.append((unscoredSinger, numerator/denominator))
        recommendations.sort(key=lambda singerTuple: singerTuple[1], reverse=True)
        return recommendations
        
if __name__ == '__main__':
    users = {"Amy": {"Taylor Swift": 4, "PSY": 3, "Whitney Houston": 4},
          "Ben": {"Taylor Swift": 5, "PSY": 2},
          "Clara": {"PSY": 3.5, "Whitney Houston": 4},
          "Daisy": {"Taylor Swift": 5, "Whitney Houston": 3}}
    

    recommender = Recommender(users)
#     print(recommender.getScoredUserAmount("Taylor Swift"))
    print(recommender.getSlopeOneRecommendations("Ben"))
    
