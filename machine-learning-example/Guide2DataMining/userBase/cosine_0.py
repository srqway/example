#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
If the data is sparse consider using Cosine Similarity.
找出與特定user(T)直線距離最近的user(O)，看user(O)看過那些user(T)沒看過的項目，做為推薦項目。
'''
from __future__ import division
from __future__ import print_function

class Recommender(object):
    def cosine(self, rating1, rating2):
        x_dot_y = 0
        sqr_x = 0
        sqr_y = 0
        movies = set(rating1.keys() + rating2.keys())
        
        for key in movies:
            x = 0
            y = 0
            if key in rating1:
                x = rating1[key]
            if key in rating2:
                y = rating2[key]
        
            x_dot_y += x*y
            sqr_x += pow(x, 2)
            sqr_y += pow(y, 2)
        
        length_x = pow(sqr_x, 1/2)
        length_y = pow(sqr_y, 1/2)
        return x_dot_y / (length_x * length_y)

    def computeNearestNeighbor(self, username, users):
        distances = []
        for user in users:
            if user != username:
                distance = self.cosine(users[user], users[username])
                distances.append((distance, user))
        distances.sort()
        return distances

    def recommend(self, username, users):
        nearest = self.computeNearestNeighbor(username, users)[0][1]
        recommendations = []
        neighborRatings = users[nearest]
        userRatings = users[username]
        for artist in neighborRatings:
            if not artist in userRatings:
                recommendations.append((artist, neighborRatings[artist]))
        return sorted(recommendations, key=lambda artistTuple: artistTuple[1], reverse=True)
        
if __name__ == '__main__':
    users = {"Angelica": {"Blues Traveler": 3.5, "Broken Bells": 2.0,
                      "Norah Jones": 4.5, "Phoenix": 5.0,
                      "Slightly Stoopid": 1.5,
                      "The Strokes": 2.5, "Vampire Weekend": 2.0},
         
         "Bill":{"Blues Traveler": 2.0, "Broken Bells": 3.5,
                 "Deadmau5": 4.0, "Phoenix": 2.0,
                 "Slightly Stoopid": 3.5, "Vampire Weekend": 3.0},
         
         "Chan": {"Blues Traveler": 5.0, "Broken Bells": 1.0,
                  "Deadmau5": 1.0, "Norah Jones": 3.0, "Phoenix": 5,
                  "Slightly Stoopid": 1.0},
         
         "Dan": {"Blues Traveler": 3.0, "Broken Bells": 4.0,
                 "Deadmau5": 4.5, "Phoenix": 3.0,
                 "Slightly Stoopid": 4.5, "The Strokes": 4.0,
                 "Vampire Weekend": 2.0},
         
         "Hailey": {"Broken Bells": 4.0, "Deadmau5": 1.0,
                    "Norah Jones": 4.0, "The Strokes": 4.0,
                    "Vampire Weekend": 1.0},
         
         "Jordyn":  {"Broken Bells": 4.5, "Deadmau5": 4.0,
                     "Norah Jones": 5.0, "Phoenix": 5.0,
                     "Slightly Stoopid": 4.5, "The Strokes": 4.0,
                     "Vampire Weekend": 4.0},
         
         "Sam": {"Blues Traveler": 5.0, "Broken Bells": 2.0,
                 "Norah Jones": 3.0, "Phoenix": 5.0,
                 "Slightly Stoopid": 4.0, "The Strokes": 5.0},
         
         "Veronica": {"Blues Traveler": 3.0, "Norah Jones": 5.0,
                      "Phoenix": 4.0, "Slightly Stoopid": 2.5,
                      "The Strokes": 3.0}
        }
    

    recommender = Recommender()
    print(recommender.recommend("Hailey", users))
    