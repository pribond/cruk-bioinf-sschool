
FROM bioconductor/release_base
MAINTAINER Mark Dunning<mark.dunning@cruk.cam.ac.uk>


RUN sudo apt-get install -y git samtools tophat sra-toolkit bwa wget bedtools python-dev fastx-toolkit
###Get repository of the course. Install data and R packages
RUN git clone https://github.com/bioinformatics-core-shared-training/cruk-bioinf-sschool.git /home/rstudio/
WORKDIR /home/rstudio
RUN chmod 755 getData.sh
RUN ./getData.sh
RUN wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.3.zip
RUN unzip fastqc_v0.11.3.zip
#RUN rm -r img stylesheets params.json img

RUN wget https://bootstrap.pypa.io/get-pip.py
RUNsudo python get-pip.py
RUNsudo pip install cython
RUNsudo pip install cutadapt
RUN sudo pip install Numpy
RUN sudo pip install MACS2
RUN rm get-pip.py


WORKDIR /home/rstudio
