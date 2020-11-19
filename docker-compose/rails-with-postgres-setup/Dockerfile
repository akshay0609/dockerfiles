ARG RUBY_VERSION=2.5.1

FROM ruby:${RUBY_VERSION}

RUN mkdir -p workspace

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR workspace

ENV BUNDLE_PATH /gems

COPY Gemfile* ./

RUN bundle install

COPY . .
