FROM ruby:3.1.2

RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq
RUN apt-get install -y  sqlite3 libsqlite3-dev nodejs npm yarn

# RUN znpm install -g n
# RUn sudo n stable
# RUN apt remove -y nodejs npm
# RUN exec $SHELL -l

WORKDIR /dmm_intern

COPY Gemfile /dmm_intern/Gemfile
COPY Gemfile.lock /dmm_intern/Gemfile.lock

RUN gem install bundler && \
    bundle install

RUN bundle install
COPY . /dmm_intern