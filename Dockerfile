FROM kmubigdata/ubuntu-cuda-cudnn

MAINTAINER kmubigdata <bigdata.cs.kookmin.ac.kr>

RUN apt-get update
RUN apt-get install -y libcupti-dev
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN apt-get -y install python
RUN python get-pip.py 
RUN apt-get install -y python-pip python-dev 
RUN pip install tensorflow-gpu
ENV LD_LIBRARY_PATH /usr/local/cuda-8.0/lib64/:${LD_LIBRARY_PATH}
