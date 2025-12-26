FROM ruby:3.3

# System deps
RUN apt-get update -qq && apt-get install -y \
  nodejs \
  npm \
  sqlite3 \
  libsqlite3-dev \
  build-essential
  libsqlite3-dev \
  build-essential

WORKDIR /app

# Install bundler (Rails already comes via Gemfile)
RUN gem install bundler

# Copy Gemfiles first (better caching)
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the app
COPY . .

# Precompile assets (important for production)
ENV RAILS_ENV=production

# Expose Railway port
EXPOSE 3000

# Start Rails server
CMD ["sh", "-c", "bundle exec rails server -b 0.0.0.0 -p ${PORT:-3000}"]
