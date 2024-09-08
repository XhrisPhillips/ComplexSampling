#!/bin/bash

set -e

./run-usb.sh
./run-lsb.sh
./run-complex-usb.sh
./run-complex-lsb.sh
./run-complex-complex.sh
./run-dsb-usb.sh
./run-dsb-lsb.sh
./run-dsb-dsb.sh

