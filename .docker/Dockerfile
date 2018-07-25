FROM  python:3.6-stretch
MAINTAINER Jorge Useche <juusechec@gmail.com>

# Python deps
#ADD ./ /docs
#COPY ./.docker/packages.txt /tmp/packages-docker.txt
COPY ./packages.txt /tmp/
COPY ./requirements.txt /tmp/
#RUN apt-get update \
#    && cat /tmp/packages-docker.txt | xargs apt-get -y install \
#    && rm -rf /var/lib/apt/lists/*
RUN apt-get update \
    && cat /tmp/packages.txt | xargs apt-get -y install \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install -r /tmp/requirements.txt

EXPOSE 5000
WORKDIR /docs
CMD ["sh", "/docs/generate-alone.sh"]
