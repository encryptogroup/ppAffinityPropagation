# ppAffinityPropagation

This is the code used in the benchmarks the SECRYPT'21 paper \[[KMS+21](https://ia.cr/2021/...)\] by Hannah Keller, Helen Möllering, Thomas Schneider, and Hossein Yalame (\[[ENCRYPTO](https://www.encrypto.cs.tu-darmstadt.de/home_page/index.en.jsp)\]).

The implementation uses the \[[MP-SPDZ](https://github.com/data61/MP-SPDZ)\] framework for benchmarking secure multi-party computation protocols. For simplicity, we only describe steps necessary that build upon the general MP-SPDZ setup, which is automated by the script:
```setup_mpspdz.sh``` 

This code is provided as an experimental implemenation for testing purposes and should not be used in a productive environment.

# Clustering of Lsun

As published, running all steps by executing `run_aff_prop_lsun.sh` on two machines simultaneously will benchmark the Lsun data set[[1]](#1) in the active security model for honest and dishonest majority, clustering for 6 iterations. In lines 11 and 12, replace 'machine1' with the name of your first machine, and adjust the number '0' that follows to '1' in the script on your second machine. 

## Other Data Sets

Data sets used for testing and benchmarking purposes are included in the `data` directory. The first step toward executing ppAffinityPropagation is loading the data to be clustered into `progs/Player-Data`. For example, `progs/Programs/Source/load_data.sh` loads the Lsun data set[[1]](#1), as specified in `progs/Programs/Source/prep_data.py`. To extend this to other data sets, adjust the path in `progs/Programs/Source/prep_data.py` to a different set. Then adapt the number of features `features` and the number of records `n` in lines 4 and 5 in `progs/Programs/Source/affinity_propagation.mpc` respectively.

## Setup and Parameters
We run affinity propagation for six iterations with an active security model, once for honest and once for dishonest majority. To change the number of affinity propagation iterations, adjust the parameter `iter` in line 6 of `progs/Programs/Source/affinity_propagation.mpc`.

Running affinity propagation in the semihonest security model with 3 parties, rather than 2, can be done by executing lines 13 and 14 instead of 11 and 12 in `run_aff_prop_lsun.sh`. Adjust the numbering of machines 0, 1, and 2 in those lines as described for malicious security for machines 0 and 1.

### References
<a id="1">[1]</a> 
Ultsch, A. (2005).
Clustering with SOM: U*C. 
Proc. Workshop on Self-Organizing Maps, Paris, France, pp. 75-82.

