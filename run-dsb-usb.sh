#!/bin/sh

set -e

export EXPER=test-usb-dsb

vex2difx ${EXPER}.v2d
difxcalc -f ${EXPER}.calc

\rm -rf ${EXPER}.difx
mpirun -machinefile machines -np 4 mpifxcorr ${EXPER}.input

difx2fits ${EXPER}

\mv -f TEST.0.bin0000.source0000.FITS ${EXPER}.fits
