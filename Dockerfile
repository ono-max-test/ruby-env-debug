FROM junaruga/ruby:test

ARG TEST_USER=ruby
ARG WORK_DIR=/home/${TEST_USER}/code

# Set the DEBIAN_FRONTEND to install tzdata.
# Install sudo for convenience.
RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get install -y --no-install-recommends \
  libssl-dev \
  netbase \
  sudo \
  tzdata
# Set any time zone to pass the unit test.
RUN ln -snf /usr/share/zoneinfo/Japan /etc/localtime
RUN dpkg-reconfigure --frontend noninteractive tzdata
# Copy certificates files to pass the unit test on source installed OpenSSL.
RUN cp -rp /usr/lib/ssl /opt/openssl/openssl-1.1.1/

RUN useradd "${TEST_USER}"
WORKDIR "${WORK_DIR}"
COPY . .
RUN chown -R "${TEST_USER}:${TEST_USER}" "${WORK_DIR}"
RUN echo "${TEST_USER} ALL = NOPASSWD: ALL" >> /etc/sudoers

USER "${TEST_USER}"
