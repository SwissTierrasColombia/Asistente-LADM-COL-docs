FROM  ubuntu:18.04
MAINTAINER Agencia Implementacion <agenciadeimplementacion@incige.com>

# Python deps
#ADD ./ /docs
COPY ./.docker/packages.txt /tmp/packages-docker.txt
COPY ./packages.txt /tmp/
COPY ./requirements.txt /tmp/
RUN apt-get update \
    && cat /tmp/packages-docker.txt | xargs apt-get -y install \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update \
    && cat /tmp/packages.txt | xargs apt-get -y install \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install -r /tmp/packages.txt

WORKDIR /docs
CMD ["sh", "/docs/generate.sh"]
