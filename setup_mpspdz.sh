#!/bin/bash

git clone https://github.com/data61/MP-SPDZ.git
cd MP-SPDZ
make -j 8 tldr
make -j 8 spdz2k-party.x
make -j 8 semi2k-party.x
make -j 8 replicated-ring-party.x
make -j 8 ps-rep-ring-party.x

