#! /bin/bash

mkdir dependencies
cd dependencies

git clone https://github.com/rivetTDA/rivet.git
cd rivet
mkdir build 
cd build 
cmake .. 
make 
cd .. 
qmake make

cd ..
git clone https://bitbucket.org/grey_narn/hera.git
cd hera
git checkout pure_geom_fr
cd geom_bottleneck
mkdir build
cd build
cmake ..
make
