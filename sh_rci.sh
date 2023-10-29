#!/bin/sh
set -x

#   5.  Get LSJ coupling
for z in 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
do(
cd Z${z}
n=5

jj2lsj > out_jj2lsj_odd${n} <<S1
odd${n}
n
y
y
S1

jj2lsj > out_jj2lsj_even${n} <<S1
even${n}
n
y
y
S1

cp odd${n}.c oddCI${n}.c
cp odd${n}.w oddCI${n}.w

rci > outodd_rci <<S7
y
oddCI${n}
y
y
1.d-6
y
n
n
y
4
1-2
1-4
1
1
S7

cp even${n}.c evenCI${n}.c
cp even${n}.w evenCI${n}.w

rci > outeven_rci <<S7
y
evenCI${n}
y
y
1.d-6
y
n
n
y
4
1-3
1-3
1-2
1-2
S7

jj2lsj > out_jj2lsj_oddCI${n} <<S1
oddCI${n}
y
y
y
S1

jj2lsj > out_jj2lsj_evenCI${n} <<S1
evenCI${n}
y
y
y
S1

cd ..

echo)
done

