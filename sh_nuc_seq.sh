
set -x

#  The nuclear potential V_nuc(r) results from a nuclear charge density given
#  by a two-parameter Fermi distribution function. The nuclear charge, the
#  two parameters fo the Fermi distribution, the mass of the nucleus, the 
#  nuclear spin and magnetic dipole and quadrupole moments are defined here.
#  Since we are not interested in calculating the hyperfine structure for now,
#  the nuclear spin and the moments have all been set to 1.

# For full loop over all Z
#   for z in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 \
#            26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 \
#            48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 \
#            70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 \
#            92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109   \
#            110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 \
#            126 127 128 129 130 131 132 133 134 135 136 137 138

# We select Z from 26 to 50
   for z in  26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
   do

# Data from Jefferson Lab (http://education.jlab.org/itselemental)
case $z in
   1) m=0; MM=1.0794;;    #  Need to use point nucleus
   2) m=4; MM=4.002602;;
   3) m=7; MM=6.941;;
   4) m=9; MM=9.012182;;
   5) m=11; MM=10.811;;
   6) m=12; MM=12.0107;;
   7) m=14; MM=14.0067;;
   8) m=16; MM=15.9994;;
   9) m=19; MM=18.9984032;;
  10) m=20; MM=20.1797;;
  11) m=23; MM=22.98976928;;
  12) m=24; MM=24.3050;;
  13) m=27; MM=26.9815386;;
  14) m=28; MM=29.0855;;
  15) m=31; MM=30.973762;;
  16) m=32; MM=32.065;;
  17) m=35; MM=35.453;;
  18) m=40; MM=39.948;;
  19) m=39; MM=39.0938;;
  20) m=40; MM=40.078;;
  21) m=45; MM=44.955912;;
  22) m=48; MM=47.867;;
  23) m=51; MM=50.9415;;
  24) m=52; MM=51.9961;;
  25) m=55; MM=54.938045;;
  26) m=56; MM=55.845;;
  27) m=59; MM=58.933195;;
  28) m=59; MM=58.6934;;
  29) m=64; MM=63.546;;
  30) m=65; MM=65.409;;
  31) m=70; MM=69.723;;
  32) m=73; MM=72.64;;
  33) m=75; MM=74.92160;;
  34) m=79; MM=78.96;;
  35) m=80; MM=79.904;;
  36) m=84; MM=83.798;;
  37) m=85; MM=85.4678;;
  38) m=88; MM=87.62;;
  39) m=89; MM=88.90585;;
  40) m=91; MM=91.224;;
  41) m=93; MM=92.90638;;
  42) m=96; MM=95.94;;
  43) m=98; MM=98;;
  44) m=101; MM=10.07;;
  45) m=103; MM=102.90550;;
  46) m=106; MM=106.42;;
  47) m=108; MM=107.8682;;
  48) m=112; MM=112.411;;
  49) m=115; MM=114.818;;
  50) m=119; MM=118.710;;
  51) m=122; MM=121.760;;
  52) m=128; MM=127.60;;
  53) m=127; MM=126.90447;;
  54) m=131; MM=131.293;;
  55) m=133; MM=132.9054519;;
  56) m=137; MM=137.327;;
  57) m=139; MM=138.90547;;
  58) m=140; MM=140.116;;
  59) m=141; MM=140.90765;;
  60) m=144; MM=144.242;;
  61) m=145; MM=145;;
  62) m=150; MM=150.36;;
  63) m=152; MM=151.964;;
  64) m=157; MM=157.25;;
  65) m=159; MM=158.92535;;
  66) m=163; MM=162.5;;
  67) m=165; MM=164.93032;;
  68) m=167; MM=167.259;;
  69) m=169; MM=168.93421;;
  70) m=173; MM=173.04;;
  71) m=175; MM=174.967;;
  72) m=178; MM=178.49;;
  73) m=181; MM=180.94788;;
  74) m=184; MM=183.84;;
  75) m=186; MM=186.207;;
  76) m=190; MM=190.23;;
  77) m=192; MM=192.217;;
  78) m=195; MM=195.084;;
  79) m=197; MM=196.966569;;
  80) m=201; MM=200.59;;
  81) m=204; MM=204.3833;;
  82) m=207; MM=207.2;;
  83) m=209; MM=208.9804;;
  84) m=209; MM=209;;
  85) m=210; MM=210;;
  86) m=222; MM=222;;
  87) m=223; MM=223;;
  88) m=226; MM=226;;
  89) m=227; MM=227;;
  90) m=232; MM=232.03806;;
  91) m=231; MM=231.03588;;
  92) m=238; MM=238.02891;;
  93) m=237; MM=237;;
  94) m=244; MM=244;;
  95) m=243; MM=243;;
  96) m=247; MM=247;;
  97) m=247; MM=247;;
  98) m=251; MM=251;;
  99) m=252; MM=252;;
 100) m=257; MM=257;;
 101) m=258; MM=258;;
 102) m=259; MM=259;;
 103) m=262; MM=262;;
 104) m=267; MM=267;;
 105) m=268; MM=268;;
 106) m=271; MM=271;;
 107) m=272; MM=272;;
 108) m=277; MM=277;;
 109) m=276; MM=276;;
 110) m=281; MM=281;;
 111) m=280; MM=280;;
 112) m=285; MM=285;;
 113) m=284; MM=284;;
 114) m=289; MM=289;;
 115) m=288; MM=288;;
 116) m=291; MM=291;;
 117) m=293; MM=293;;   #Estimated
 118) m=294; MM=294;;
 119) m=316; MM=316;;
 120) m=318; MM=318;;
 121) m=322; MM=322;;
 122) m=324; MM=324;;
 123) m=326; MM=326;;
 124) m=330; MM=330;;
 125) m=332; MM=332;;
 126) m=334; MM=334;;
 127) m=338; MM=338;;
 128) m=340; MM=340;;
 129) m=342; MM=342;;
 130) m=346; MM=346;;
 131) m=348; MM=348;;
 132) m=350; MM=350;;
 133) m=354; MM=354;;
 134) m=356; MM=356;;
 135) m=358; MM=358;;
 136) m=362; MM=362;;
 137) m=364; MM=364;;
 138) m=366; MM=366;;
esac

echo "Starting: Z::"${z}, "ZZ::"$ZZ, "mass::"${m}, "Weight::"${MM} 

rm -r Z$z
mkdir Z$z
cd Z$z


#  The nuclear data is generated and saved in the file named isodata.
rnucleus <<EOF 
$z
$m
n
$MM
1
1
1
EOF

cd ..

done
