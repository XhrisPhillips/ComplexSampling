#!/usr/bin/sh

export DURATION=120

export SEED1=38573
export SEED2=58573

# USB Real DATA
generateVDIF -seed=$SEED1 -year 2020 -w 4 -b 2 -C 1  -l ${DURATION} -noise -amp2 0.05 -tone2 1.5 -dayno 100 -time 07:00:00 TEST1-usb.vdif
generateVDIF -seed=$SEED2 -year 2020 -w 4 -b 2 -C 1  -l ${DURATION} -noise -amp2 0.05 -tone2 1.0 -dayno 100 -time 07:00:00 TEST2-usb.vdif

# LSB Real
generateVDIF -seed=$SEED2 -year 2020 -w 4 -b 2 -C 1  -l ${DURATION} -noise -amp2 0.05 -tone2 1.0 -dayno 100 -time 07:00:00 -lsb TEST2-lsb.vdif

# Complex (single side band)
generateVDIF -seed=$SEED2 -year 2020 -w 4 -b 2 -C 1  -l ${DURATION} -noise -amp2 0.05 -tone2 1.0 -dayno 100 -time 07:00:00 -hilbert      TEST2-complex-usb.vdif
generateVDIF -seed=$SEED2 -year 2020 -w 4 -b 2 -C 1  -l ${DURATION} -noise -amp2 0.05 -tone2 1.0 -dayno 100 -time 07:00:00 -hilbert -lsb TEST2-complex-lsb.vdif

# Complex (double side band)
generateVDIF -seed=$SEED1 -year 2020 -w 4 -b 2 -C 1  -l ${DURATION} -noise -amp2 0.05 -tone2 1.5 -dayno 100 -time 07:00:00 -hilbert -doublesideband      TEST1-dsb-usb.vdif
generateVDIF -seed=$SEED2 -year 2020 -w 4 -b 2 -C 1  -l ${DURATION} -noise -amp2 0.05 -tone2 1.0 -dayno 100 -time 07:00:00 -hilbert -doublesideband      TEST2-dsb-usb.vdif
generateVDIF -seed=$SEED2 -year 2020 -w 4 -b 2 -C 1  -l ${DURATION} -noise -amp2 0.05 -tone2 1.0 -dayno 100 -time 07:00:00 -hilbert -doublesideband -lsb TEST2-dsb-lsb.vdif
