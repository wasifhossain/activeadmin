# TODO: Always run simplecov again once
# https://github.com/colszowka/simplecov/issues/404,
# https://github.com/glebm/i18n-tasks/issues/221 are fixed
SimpleCov.start do
  add_filter 'spec/rails/'
end

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatters = [
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::Codecov
  ]
end
