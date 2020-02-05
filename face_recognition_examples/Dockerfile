FROM face_recognition

WORKDIR /root

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender1 \
  && rm -rf -rf /var/lib/apt/lists/* \
  && pip3 install --no-cache-dir opencv-python \
  && git clone --depth 1 https://github.com/ageitgey/face_recognition

WORKDIR /root/face_recognition/examples
