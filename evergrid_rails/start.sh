#!/usr/bin/env bash

# Check and install dependencies
echo Checking dependencies...
bundle check || bundle install

# Compile assets for production environments
echo Precompile assets...
bundle exec rake assets:precompile

# Update DB
echo Updating DB...
bundle exec rake db:migrate || exec bundle exec rake db:create db:migrate

# Start server
echo Server started
# Prefix `bundle` with `exec` so unicorn shuts down gracefully on SIGTERM (i.e. `docker stop`)
exec bundle exec unicorn -c config/unicorn.rb -E $RAILS_ENV;
