
FROM nvcr.io/nvidia/tensorflow:19.01-py3
MAINTAINER Ashwin Nair

RUN apt-get update && apt-get install -y --no-install-recommends

RUN apt-get -y install libglib2.0-0 libxrender1 libsm6 libxext6 vim \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN pip --no-cache-dir install \
	Cython

RUN pip install --upgrade pip
COPY docker/dl_requirements.txt /tmp/

RUN pip install --no-cache-dir -r /tmp/dl_requirements.txt


WORKDIR /workspace/DL3
RUN ["/bin/bash"]
