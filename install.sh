#!/bin/bash
cd Lordec && make
cd ../
cd canu/src
make -j 4
cd ../../
