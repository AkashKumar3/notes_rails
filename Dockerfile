FROM ruby:3.3

# Install system dependencies
RUN apt-get update -qq && apt-get install -y \
  nodejs \
  npm \
  sqlite3 \
  libsqlite3-dev

# Set working directory
WORKDIR /app

# Install Rails
RUN gem install bundler rails

# Expose Rails port
EXPOSE 3000

# Start Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
