# Smart test

This is a test for Smart Pension.

This script receives a log file as argument (webserver.log provided as example) and returns a list of webpages with most page views ordered from most pages views to less page views.

## Gems & Specifications

* Ruby 3.0.4
* rSpec for tests
* Rubocop for code normalization

## How to use the script

First, clone the repository:

    $ git clone git@github.com:jkeuleya/ruby-test-smart.git

Then, install dependencies via Bundler:

    $ bundle install

Run the script:

    $ ./parser.rb <log_file.log>
