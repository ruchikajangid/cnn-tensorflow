FROM ubuntu:18.04
FROM python:3

ADD cnn_with_tensorflow_inference.py /

COPY variables /

COPY requirements.txt /

RUN pip3 install -r requirements.txt

COPY saved_model.pb /

CMD ["python3", "./cnn_with_tensorflow_inference.py"]




