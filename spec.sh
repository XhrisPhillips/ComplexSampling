#!/bin/bash

m5spec TEST1-usb.vdif VDIF_8000-16-1-2 512 100000 test1-usb.spec
m5spec TEST2-usb.vdif VDIF_8000-16-1-2 512 100000 test2-usb.spec
m5spec TEST2-lsb.vdif VDIF_8000-16-1-2 512 100000 test2-lsb.spec
m5spec TEST1-complex-usb.vdif VDIFC_8000-16-1-2 512 100000 test1-complex-usb.spec
m5spec TEST2-complex-usb.vdif VDIFC_8000-16-1-2 512 100000 test2-complex-usb.spec
m5spec TEST2-complex-lsb.vdif VDIFC_8000-16-1-2 512 100000 test2-complex-lsb.spec
m5spec -double TEST2-dsb-usb.vdif VDIFC_8000-16-1-2 512 100000 test2-dsb-usb.spec
m5spec -double TEST2-dsb-lsb.vdif VDIFC_8000-16-1-2 512 100000 test2-dsb-lsb.spec
