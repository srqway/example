'''
array
'''
import numpy as NP

arr_0 = NP.array([1,2,3])
print("NP.array([1,2,3]):")
print(arr_0)

arr_1 = NP.array([1.,2.,3.])
print("NP.array([1.,2.,3.]):")
print(arr_1)

arr_2 = NP.array([1,2,3], dtype=float)
print("NP.array([1,2,3], dtype=float):")
print(arr_2)

arr_3 = NP.zeros((2,3))
print("NP.zeros((2,3)):")
print(arr_3)

arr_4 = NP.ones((2,3))
print("NP.ones((2,3)):")
print(arr_4)

arr_5 = NP.identity(4)
print("NP.identity(4):")
print(arr_5)

arr_6_a = NP.ones((2,3))
arr_6_b = arr_6_a.copy();
print("arr_6_a.copy();:")
print(arr_6_b)

arr_7 = NP.ones((2,3))
print("arr_7.shape:")
print(arr_7.shape)

arr_8 = NP.ones((2,3))
print("arr_8.size:")
print(arr_8.size)

arr_9 = NP.array([[1,2,3],[4,5,6]])
print("arr_9.transpose:")
print(arr_9.transpose())

arr_10 = NP.array([[1,2,3],[4,5,6]])
print("arr_10.ravel:")
print(arr_10.ravel())

arr_11 = NP.array([1,2,3,4,5,6])
print("arr_11.reshape(2,3):")
print(arr_11.reshape(2,3))

arr_12 = NP.array([[1,2,3],[4,5,6],[7,8,9]])
arr_12.resize(2,2)
print("arr_12.resize(2,2):")
print(arr_12)
