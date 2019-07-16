FROM ruby:2.6.3-slim
LABEL maintainer="andrey@lewagon.org"

# make the "en_US.UTF-8" locale so ruby will be utf-8 enabled by default
RUN apt-get update && apt-get install -y locales \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && rm -rf /var/lib/apt/lists/*
ENV LANG en_US.utf8
