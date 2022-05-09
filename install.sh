#!/bin/bash
cd Lordec && make
cd canu/src
make -j 4
cd ../../
