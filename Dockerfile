FROM ubuntu:14.04

EXPOSE 5000

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python-dev python-pip

COPY requirements.txt /opt/flask-boilerplate/requirements.txt
WORKDIR /opt/flask-boilerplate

RUN pip install -r requirements.txt

COPY . /opt/flask-boilerplate

ENTRYPOINT ["python", "app.py"]
