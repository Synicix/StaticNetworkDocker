FROM atlab/pytorch:latest
    
WORKDIR /src

RUN apt-get -y update && apt-get  -y install ffmpeg
RUN pip3 install imageio ffmpy h5py opencv-python statsmodels jupyter pandas datajoint==0.11.3

RUN git clone https://github.com/atlab/attorch.git && \
    pip install -e attorch/

RUN git clone https://github.com/cajal/neuro_data.git && \
    pip install -e neuro_data/

RUN git clone https://github.com/cajal/featurevis.git && \
    pip install -e featurevis/

WORKDIR /