#!/bin/bash

echo "updating pyspecdata"
cd pyspecdata
git pull
python setup.py develop

echo "updating nlsl_1D"
cd ../nlsl_1D
git pull
python setup.py develop

echo "updating nlsl_2D"
cd ../nlsl_2D
git pull
make

echo "updating nlsl_basisreduce"
cd ../nlsl_basisreduce
git pull
make

echo "updating workshop_examples"
cd ../workshop_examples
git pull
cd ..
