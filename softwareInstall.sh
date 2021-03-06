###Get repository of the course.
#git clone https://github.com/bioinformatics-core-shared-training/cruk-bioinf-sschool.git
sudo apt-get update
sudo apt-get install -y git samtools tophat sra-toolkit pkg-config bwa wget bedtools python-dev

##Download required R packages. Assumes R 3.2.0
sudo R -f installBiocPkgs.R




#### Get and compile fastx toolkit

wget https://github.com/agordon/libgtextutils/releases/download/0.7/libgtextutils-0.7.tar.gz
gunzip libgtextutils-0.7.tar.gz
tar -xvf libgtextutils-0.7.tar
cd libgtextutils-0.7
./configure
make
sudo make install
cd ../

wget https://github.com/agordon/fastx_toolkit/releases/download/0.0.14/fastx_toolkit-0.0.14.tar.bz2
tar -xjf fastx_toolkit-0.0.14.tar.bz2 
cd fastx_toolkit-0.0.14
./configure
make
sudo make install

##fastqc

wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.3_source.zip
unzip fastqc_v0.11.3_source.zip
#chmod 755 FastQC/fastqc
#sudo ln -s $(pwd)/FastQC/fastqc /usr/bin/fastqc

##tidy-up 
rm *.zip
rim *.tar

wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install cython
sudo pip install cutadapt
sudo pip install Numpy
sudo pip install MACS2
rm get-pip.py


