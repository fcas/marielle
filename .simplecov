require 'simplecov'
require 'coveralls'

SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start do
  add_filter 'marielle/test'
  add_filter 'marielle/spec'
end