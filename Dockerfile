FROM ruby:2.0-wheezy

RUN echo 'deb http://debarchive.mirror.locaweb.com.br/debian/ wheezy main non-free contrib' > /etc/apt/sources.list
RUN echo 'deb http://pacotes.linux.locaweb.com.br/core_wheezy/debian stable main contrib non-free' >> /etc/apt/sources.list
RUN echo 'deb http://pacotes.linux.locaweb.com.br/ruby_wheezy/debian ruby2x main contrib non-free' >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y debhelper

RUN gem install bundler --no-ri --no-rdoc -v 1.17.3

