# face_recognition_docker

Run [face_recognition](https://github.com/ageitgey/face_recognition) on GPU easily with Docker.

## Setup

To run on GPU you need a computer with a CUDA-capable GPU and the NVIDIA driver >= 418.39 (because it uses CUDA 10.1;
see the
[CUDA Toolkit and Compatible Driver Versions table](https://docs.nvidia.com/deploy/cuda-compatibility/index.html#binary-compatibility__table-toolkit-driver)
for more information). Otherwise, you can run on CPU.

1. Install Docker.
2. Install the [NVIDIA Container Toolkit](https://github.com/NVIDIA/nvidia-docker).
3. Run:

```bash
docker build -f face_recognition/Dockerfile -t face_recognition face_recognition/
docker build -f face_recognition_examples/Dockerfile -t face_recognition_examples face_recognition_examples/
host +local:root
docker run \
  --rm \
  -ti \
  --gpus all \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -e QT_X11_NO_MITSHM=1 \
  -e DISPLAY \
  --device=/dev/video0:/dev/video0 \
  face_recognition_examples \
    python3 facerec_from_webcam_faster.py
```
