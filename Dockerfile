FROM ruby:3.3

# Install system dependencies
RUN apt-get update -qq && apt-get install -y \
  nodejs \
  npm \
  postgresql-client \
  build-essential \
  libpq-dev \
  libsqlite3-dev

WORKDIR /app

# Copy Gemfiles and install
COPY Gemfile* ./
RUN bundle install

# Copy the rest of the app
COPY . .

# Precompile assets
RUN RAILS_ENV=production rails assets:precompile

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
