# Smart test

This is a test for Smart Pension.

This script receives a log file as argument (webserver.log provided as example) and returns a list of webpages with most page views ordered from most pages views to less page views. A pretty print option is available.

## Gems & Specifications

* Ruby 3.0.4
* rSpec for tests
* Rubocop for code normalization

## How to use the script

First, clone the repository:

    $ git clone git@github.com:jkeuleya/ruby-test-smart.git

Secondly, install dependencies via Bundler (not mandatory, only for tests purposes):

    $ bundle install

And finally, use the following command to run the script:
- `<log_file.log>` which is the file you want to analyze. Replace by your file name.
- `<pretty_print>` which is an option for a better output. Replace by `true` to activate it. Argument not mandatory, you can leave it blank

```
$ ./parser.rb <log_file.log> <pretty_print>
```
