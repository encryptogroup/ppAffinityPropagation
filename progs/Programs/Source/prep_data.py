import numpy as np

X = np.loadtxt(("../../../data/fpcs/lsun.data.gz"), ndmin=2)#np.load("../../../data/blobs_5.npz")['arr_0']

for row in X:
    for item in row:
        print(int(item*1000000),end=' ')
    print()
