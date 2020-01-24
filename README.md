[![Build Status](https://travis-ci.org/pratas/geco2.svg?branch=master)](https://travis-ci.org/cobilab/geco2)
![Conda](https://img.shields.io/conda/dn/bioconda/geco2)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](LICENSE)

<p align="center"><img src="imgs/logo.png" 
alt="GeCo2" width="300" height="260" border="0" /></p>
<b>Compress and analyze genomic sequences</b>. As a compression tool, GeCo2 is able to provide additional compression gains over several top specific tools, while as an analysis tool, GeCo2 is able to determine absolute measures, namely for many distance computations, and local measures, such as the information content contained in each element, providing a way to quantify and locate specific genomic events. 
GeCo2 can afford:
<ul>
<li>reference-free compression</li>
<li>referential compression</li>
<ul>
<li>relative compression</li>
<li>conditional compression</li>
</ul>
</ul>

## INSTALLATION ##

### Conda
Install [Miniconda](https://docs.conda.io/en/latest/miniconda.html), then run the following:
```bash
conda install -y -c bioconda geco2
```

Otherwise, CMake is needed for installation (http://www.cmake.org/). You can download it directly from http://www.cmake.org/cmake/resources/software.html or use an appropriate packet manager. In the following instructions we show the procedure to install, compile and run GeCo2:

### STEP 1

Download, install and resolve conflicts.

#### Linux 
<pre>
#sudo apt-get install cmake git
git clone https://github.com/pratas/geco2.git
cd geco2/src/
cmake .
make
</pre>

Alternatively, you can install (without cmake and only for linux) using

<pre>
wget https://github.com/pratas/geco2/archive/master.zip
unzip master.zip
cd geco2-master/src/
mv Makefile.linux Makefile
make
</pre>

#### macOS
Install brew:
<pre>
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
</pre>
only if you do not have it. After type:
<pre>
brew install cmake
brew install wget
brew install gcc48
wget https://github.com/pratas/geco2/archive/master.zip
unzip master.zip
cd geco2-master/src/
cmake .
make
</pre>
With some versions you might need to create a link to cc or gcc (after the *brew install gcc48* command), namely
<pre>
sudo mv /usr/bin/gcc /usr/bin/gcc-old   # gcc backup
sudo mv /usr/bin/cc /usr/bin/cc-old     # cc backup
sudo ln -s /usr/bin/gcc-4.8 /usr/bin/gcc
sudo ln -s /usr/bin/gcc-4.8 /usr/bin/cc
</pre>
In some versions, the gcc48 is installed over /usr/local/bin, therefore you might need to substitute the last two commands by the following two:
<pre>
sudo ln -s /usr/local/bin/gcc-4.8 /usr/bin/gcc
sudo ln -s /usr/local/bin/gcc-4.8 /usr/bin/cc
</pre>

#### Windows

In windows use cygwin (https://www.cygwin.com/) and make sure that it is included in the installation: cmake, make, zcat, unzip, wget, tr, grep (and any dependencies). If you install the complete cygwin packet then all these will be installed. After, all steps will be the same as in Linux.

## EXECUTION

### Run GeCo2

Run GeCo2 using (lazy) level 5:

<pre>
./GeCo2 -v -l 5 File.seq
</pre>

## PARAMETERS

To see the possible options type
<pre>
./GeCo2
</pre>
or
<pre>
./GeCo2 -h
</pre>

If you are not interested in setting the template for each model, then use the levels mode. To see the possible levels type:
<pre>
./GeCo2 -s
</pre>

## CITATION ##

On using this software/method please cite:

Pratas, Diogo, Morteza Hosseini, and Armando J. Pinho. "GeCo2: An Optimized Tool for Lossless Compression and Analysis of DNA Sequences." International Conference on Practical Applications of Computational Biology & Bioinformatics. Springer, Cham, 2019.

## NEW FEATURES IN VERSION 2 ##

1. Specific Gamma for each model;
2. Specific Cache-hash sizes;
3. Mode to allow to run with inverted repeats only;
4. New interface layout (ascii);
5. New approximate power function;
6. Optimized functions;
7. New 15 pre-computed modes for reference-free compression;

## ISSUES ##

For any issue let us know at [issues link](https://github.com/pratas/GeCo2/issues).

## LICENSE ##

GPL v3.

For more information:
<pre>http://www.gnu.org/licenses/gpl-3.0.html</pre>

                                                    

