FROM ruby:2.3.3

ENV PHANTOM_JS="phantomjs-2.1.1-linux-x86_64"

RUN apt-get update \
  && apt-get upgrade -y \
  && curl -sLO https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 \
  && tar xvjf $PHANTOM_JS.tar.bz2 \
  && mv $PHANTOM_JS /usr/local/share \
  && ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin \
  && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
  && apt-get install -y nodejs fonts-migmix python2.7-dev python-pip\
  && apt-get clean
COPY local.conf /etc/fonts/local.conf
