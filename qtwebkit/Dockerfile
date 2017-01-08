FROM ruby:2.3.3-alpine

RUN apk update && apk upgrade \
  && apk add --no-cache --virtual build-dependencies \
    build-base \
  && apk add --no-cache \
    postgresql-dev \
    libxml2-dev \
    libxslt-dev \
    qt5-qtwebkit-dev \
    nodejs \
  && ln -s /usr/lib/qt5/bin/qmake /usr/local/bin/qmake \
  && gem install bundler \
  && bundle config --global build.nokogiri --use-system-libraries \
  && bundle config --global jobs 4
