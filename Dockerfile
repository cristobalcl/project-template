FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y python3 python3-pip

RUN mkdir -p /app
WORKDIR /app
COPY . /app

RUN cat /app/requirements.system | xargs apt-get install -y
RUN pip3 install -r /app/requirements.txt

CMD ["bin/run.sh"]
