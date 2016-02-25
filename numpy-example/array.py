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

arr_13 = NP.array([[1,2,3,4],
                   [5,6,7,8],
                   [9,10,11,12]])
print("arr_13[0:3, 0:2]:")
print(arr_13[1:3, 0:2])

arr_14 = NP.array([[1,2,3,4],
                   [5,6,7,8],
                   [9,10,11,12]])
arr_14[1, 1:3] = 0
print("arr_14[1, 1:3] = 0:")
print(arr_14)

arr_15 = NP.array([1,2,3,4])
arr_15[0:3] = arr_15[1:4]
print("arr_15[0:3] = arr_15[1:4]:")
print(arr_15)

arr_16 = NP.array([1,2,3,4])
subscript_16 = [3,1]
print("arr_16[subscript_16]:")
print(arr_16[subscript_16])

arr_17 = NP.array([1,2,3,4])
print("arr_17 < 3:")
print(arr_17 < 3)

arr_18 = NP.array([1,2,3,4])
print("arr_18[arr_18 < 3]:")
print(arr_18[arr_18 < 3])

arr_19 = NP.array([1,2,3,4])
mask_19 = NP.array([True, False, True, False])
arr_19[mask_19] = NP.array([10,20])
print("arr_19[mask_19] = NP.array([10,20,30,40]):")
print(arr_19)

arr_20 = NP.array([1,2,3,4])
mask_20 = NP.array([True, False, True, False])
replace_20 = NP.array([10,20,30,40])
NP.putmask(arr_20, mask_20, replace_20)
print("NP.putmask(arr_20, mask_20, replace_20):")
print(arr_20)

arr_21 = NP.array([1,2,3,4])
print("(arr_21 > 1) & (arr_21 < 4):")
print((arr_21 > 1) & (arr_21 < 4))

arr_22 = NP.array([1,2,3,4])
print("NP.where(arr_22 < 3, arr_22, 0):")
print(NP.where(arr_22 < 3, arr_22*10, 0))
