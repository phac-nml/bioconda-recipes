#!/bin/bash

set -x -e

export LD_LIBRARY_PATH="${PREFIX}/lib"
make all PREFIX=${PREFIX}
make install PREFIX=${PREFIX}

#This is really a test
pheniqs demux --config test/000000000-BDGGG/demultiplex.json -VD
