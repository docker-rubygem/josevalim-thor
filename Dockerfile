FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.10.9

RUN gem install josevalim-thor --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["thor"]
CMD ["--help"]
