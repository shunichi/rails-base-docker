FROM ruby:2.3.3-alpine

RUN apk update && apk upgrade \
  && apk add --no-cache --virtual build-dependencies \
    build-base \
  && apk add --no-cache \
    tzdata \
    postgresql-dev \
    libxml2-dev \
    libxslt-dev \
    xvfb \
    dbus \
    qt5-qtwebkit-dev \
    nodejs \
  && ln -s /usr/lib/qt5/bin/qmake /usr/local/bin/qmake \
  && dbus-uuidgen \
  && gem install bundler \
  && bundle config --global build.nokogiri --use-system-libraries \
  && bundle config --global jobs 4
