#!/bin/sh

set -x

#    Main script for 2s(2)2p, 2s2p(2), 2s(1)2p(3), 2s(2)3s(1), 2s(2)3d(1) and 2s(2)3p(1) ~
# 1.   Generate the expansions
        ./sh_files_c

# 2.   Get the nuclear data
        ./sh_nuc_seq.sh

# 3.   Getting inital estimates of orbitals using
#      Thomas-Fermi potential.
        ./sh_initial
# 4.   Perform SCF calculations upto n = 6 for even and odd states
#      separately
        ./sh_odd
        ./sh_even

# 4.   Final rci calculation that includes the Breit correction and QED. All rci calculations 
#      and n = 6 non rci calculations are transformed to LSJ-coupling. Files are created that 
#      support creation of energy tables
        ./sh_rci

