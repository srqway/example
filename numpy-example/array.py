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

arr_3 = NP.array([[1,2,3],[4,5,6]])
print("arr_3.ravel():")
print(arr_3.ravel())

arr_4 = NP.array([1,2,3,4,5,6])
print("arr_4.reshape(2,3):")
print(arr_4.reshape(2,3))

arr_5 = NP.array([[1,2,3],[4,5,6]])
print("arr_5.transpose:")
print(arr_5.transpose())

arr_6 = NP.array([[1,2,3],[4,5,6],[7,8,9]])
arr_6.resize(2,2)
print("arr_6.resize(2,2):")
print(arr_6)

arr_7 = NP.array([[1,2,3,4],
                   [5,6,7,8],
                   [9,10,11,12]])
print("arr_7[0:3, 0:2]:")
print(arr_7[1:3, 0:2])

arr_8 = NP.array([[1,2,3,4],
                   [5,6,7,8],
                   [9,10,11,12]])
arr_8[1, 1:3] = 0
print("arr_8[1, 1:3] = 0:")
print(arr_8)

arr_9 = NP.array([1,2,3,4])
arr_9[0:3] = arr_9[1:4]
print("arr_9[0:3] = arr_9[1:4]:")
print(arr_9)

arr_10 = NP.array([1,2,3,4])
print("arr_10[[3,1]]:")
print(arr_10[[3,1]])

arr_11 = NP.array([1,2,3,4])
print("arr_11 < 3:")
print(arr_11 < 3)

arr_12 = NP.array([1,2,3,4])
print("arr_12[arr_12 < 3]:")
print(arr_12[arr_12 < 3])

arr_13 = NP.array([1,2,3,4])
mask_13 = NP.array([True, False, True, False])
arr_13[mask_13] = NP.array([10,20])
print("arr_13[mask_13] = NP.array([10,20]):")
print(arr_13)

arr_14 = NP.array([1,2,3,4])
mask_14 = NP.array([True, False, True, False])
replace_14 = NP.array([10,20,30,40])
NP.putmask(arr_14, mask_14, replace_14)
print("NP.putmask(arr_14, mask_14, replace_14):")
print(arr_14)

arr_15 = NP.array([1,2,3,4])
print("(arr_15 > 1) & (arr_15 < 4):")
print((arr_15 > 1) & (arr_15 < 4))

arr_16 = NP.array([1,2,3,4])
print("NP.where(arr_16 < 3, arr_16, 0):")
print(NP.where(arr_16 < 3, arr_16 * 10, 0))

arr_17 = NP.array([
                   [1,2],
                   [3,4]])
print("arr_17 * arr_17:")
print(arr_17 * arr_17)

arr_18 = NP.array([
                   [1,2,3],
                   [4,5,6],
                   [7,8,9]])
print("arr_18[1,:]:")
print(arr_18[1,:])

