#!/bin/bash
#
rm -fr geco2
git clone https://github.com/pratas/geco2.git
cd geco2/src/
cmake .
make
cp GeCo2 ../../
cp GeDe2 ../../
cd ../../
#
wget http://sweet.ua.pt/pratas/datasets/DNACorpus.zip
unzip DNACorpus.zip
mv DNACorpus/* .
#
#
cat AeCa AgPh AnCa BuEb DaRe DrMe EnIn EsCo GaGa HaHi HePy HoSa OrSa PlFa ScPo WaMe YeMi > ALL;
#
#
for (( x = 1 ; x < 16 ; ++x ));
  do
  (./GeCo2 -v -l $x AeCa ) &> REPORT_AeCa_$x;
  (./GeCo2 -v -l $x AgPh ) &> REPORT_AgPh_$x;
  (./GeCo2 -v -l $x AnCa ) &> REPORT_AnCa_$x;
  (./GeCo2 -v -l $x BuEb ) &> REPORT_BuEb_$x;
  (./GeCo2 -v -l $x DaRe ) &> REPORT_DaRe_$x;
  (./GeCo2 -v -l $x DrMe ) &> REPORT_DrMe_$x;
  (./GeCo2 -v -l $x EnIn ) &> REPORT_EnIn_$x;
  (./GeCo2 -v -l $x EsCo ) &> REPORT_EsCo_$x;
  (./GeCo2 -v -l $x GaGa ) &> REPORT_GaGa_$x;
  (./GeCo2 -v -l $x HaHi ) &> REPORT_HaHi_$x;
  (./GeCo2 -v -l $x HePy ) &> REPORT_HePy_$x;
  (./GeCo2 -v -l $x HoSa ) &> REPORT_HoSa_$x;
  (./GeCo2 -v -l $x OrSa ) &> REPORT_OrSa_$x;
  (./GeCo2 -v -l $x PlFa ) &> REPORT_PlFa_$x;
  (./GeCo2 -v -l $x ScPo ) &> REPORT_ScPo_$x;
  (./GeCo2 -v -l $x WaMe ) &> REPORT_WaMe_$x;
  (./GeCo2 -v -l $x YeMi ) &> REPORT_YeMi_$x;
  #
  (./GeCo2 -v -l $x ALL ) &> REPORT_ALL_$x;
  done
#  

