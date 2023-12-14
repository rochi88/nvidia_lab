FROM nvidia/cuda:12.0.0-base-ubuntu22.04

RUN apt update

RUN apt-get install -y python3 python3-pip

RUN pip install tensorflow-gpu

COPY tensor-code.py .

CMD ["python3", "tensor-code.py"]