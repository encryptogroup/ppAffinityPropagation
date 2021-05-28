import numpy as np
from matplotlib import pyplot as plt
from sklearn.datasets.samples_generator import make_blobs

blobs, clust = make_blobs(n_samples=500, centers=2, cluster_std=0.30, random_state=0)
blobs = blobs*100
path = "../../../../data"
np.savez("../../../data/blobs_500.npz", blobs)
