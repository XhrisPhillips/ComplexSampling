#!/bin/sh

\rm -rf test.difx
startcorr.pl -machinefile machines -np 4 mpifxcorr test.input
