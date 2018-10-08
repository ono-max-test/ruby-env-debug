FROM ubuntu:18.04

WORKDIR /home/ruby
COPY . .

ENV COMPILER gcc-8
ENV INSTALLED_OPENSSL_VERSION 1.1.1

RUN apt-get update -qq && \
  apt-get install -y --no-install-recommends -qq \
  autoconf \
  bison \
  build-essential \
  ca-certificates \
  curl \
  gzip \
  git \
  libffi-dev \
  patch \
  pkg-config \
  openssl \
  ruby \
  software-properties-common \
  zlib1g-dev
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
  apt-get update -qq && \
  apt-get install -qq "${COMPILER}"
RUN apt-get clean all
RUN ./install_openssl.sh "${INSTALLED_OPENSSL_VERSION}"

ENTRYPOINT ["/home/ruby/init.sh"]
