#!/usr/bin/env bash

# Check and install dependencies
echo Checking dependencies...
bundle check || bundle install

# Start server
echo Server started
# Prefix `bundle` with `exec` so unicorn shuts down gracefully on SIGTERM (i.e. `docker stop`)
exec bundle exec rails server -b 0.0.0.0
