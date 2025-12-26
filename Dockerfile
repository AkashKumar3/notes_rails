FROM ruby:3.3

# System deps
RUN apt-get update -qq && apt-get install -y \
  nodejs \
  npm \
  sqlite3 \
  libsqlite3-dev \
  build-essential

WORKDIR /app

# Install bundler
RUN gem install bundler

# Copy gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy app
COPY . .

# Expose port
EXPOSE 3000

# Start server (Railway injects env vars at runtime)
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "${PORT:-3000}"]
