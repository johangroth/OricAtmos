#!/bin/bash
64tass -o atmos.bin --nostart --no-monitor --line-numbers --tab-size=1 --list=atmos.lst atmos.asm
od -A x -t x1 atmos.bin > atmos.bin.od
diff -duw  atmos.rom.od atmos.bin.od
