#!/bin/bash
cd Lordec && make
cd vendors/src
make -j 4
cd ../../
