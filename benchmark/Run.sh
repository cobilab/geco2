#!/bin/bash

rm -fr geco2
git clone https://github.com/pratas/geco2.git
cd geco2/src/
cmake .
make
cp GeCo2 ../../
cp GeDe2 ../../
cd ../../

wget http://sweet.ua.pt/pratas/datasets/DNACorpus.zip
unzip DNACorpus.zip
mv DNACorpus/* .


cat AeCa AgPh AnCa BuEb DaRe DrMe EnIn EsCo GaGa HaHi HePy HoSa OrSa PlFa ScPo WaMe YeMi > ALL;


for (( x = 1 ; x < 16 ; ++x ))
  do
    for corpus in {AeCa,AgPh,AnCa,BuEb,DaRe,DrMe,EnIn,EsCo,GaGa,HaHi,HePy,HoSa,OrSa,PlFa,ScPoW,aMe,YeMi,ALL}
    do
      ./GeCo2 -v -l $x $corpus 2>&1 | tee 'REPORT_'$corpus'_'$x
      echo # Only printing a new line
    done
  done

