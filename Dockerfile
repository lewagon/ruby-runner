FROM ruby:2.6.6-slim
LABEL maintainer="andrey@lewagon.org"

RUN apt-get update -qq \
  && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
  build-essential \
  gnupg2 \
  curl \
  less \
  git \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && truncate -s 0 /var/log/*log
  
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN gem install minitest-reporters nokogiri
