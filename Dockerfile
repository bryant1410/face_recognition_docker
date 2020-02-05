FROM nvidia/cuda:10.1-cudnn7-devel

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    cmake \
    git \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender1 \
    python3 \
    python3-dev \
    python3-pip \
  && rm -rf /var/lib/apt/lists/* \
  && cd /root \
  && git clone --depth 1 https://github.com/ageitgey/face_recognition \
  && cd face_recognition \
  && pip3 install --no-cache-dir setuptools wheel \
  && pip3 install --no-cache-dir --editable . \
  && pip3 install --no-cache-dir opencv-python

WORKDIR /root/face_recognition/examples
