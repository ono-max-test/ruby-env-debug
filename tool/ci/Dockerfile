ARG BASE_IMAGE=ubuntu:bionic
FROM ${BASE_IMAGE}

WORKDIR /tmp/ruby
COPY . .

# Set the DEBIAN_FRONTEND to install tzdata.
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update \
  && apt-get -yq --no-install-suggests --no-install-recommends install \
  autoconf \
  bison \
  build-essential \
  ca-certificates \
  curl \
  gzip \
  libffi-dev \
  libssl-dev \
  netbase \
  patch \
  pkg-config \
  openssl \
  ruby \
  tzdata \
  zlib1g-dev \
  && apt-get -y upgrade \
  && apt-get -y autoremove \
  && apt-get -y clean
# Set a time zone to pass the test.
# RUN ln -snf /usr/share/zoneinfo/Japan /etc/localtime
# RUN dpkg-reconfigure --frontend noninteractive tzdata
