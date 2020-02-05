FROM nvidia/cuda:10.1-cudnn7-devel

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    cmake \
    python3 \
    python3-dev \
    python3-pip \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 install --no-cache-dir setuptools wheel \
  && pip3 install --no-cache-dir face_recognition
