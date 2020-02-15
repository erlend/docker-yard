FROM ruby:alpine

RUN gem install -N yard && \
    rm -rf $GEM_HOME/cache/*

WORKDIR /code
ENTRYPOINT ["/usr/local/bundle/bin/yard"]
CMD ["help"]
