#!/bin/bash

cd progs/Programs/Source
chmod +x load_data.sh
./load_data.sh

cd ../..

../MP-SPDZ/compile.py -X -R 64 -M affinity_propagation.mpc

../MP-SPDZ/semi2k-party.x -N 2 -h machine1 0 affinity_propagation  &>> result_semi_lsun
../MP-SPDZ/spdz2k-party.x -N 2 -h machine1 0 affinity_propagation  &>> result_spdz_lsun
#./MP-SPDZ/rep4-ring-party.x -h machine1 0 affinity_propagation_lsun &>> result_replicated-ring
#./MP-SPDZ/ps-rep-ring-party.x -h machine1 0 affinity_propagation_lsun >> result_ps-replicated-ring
