SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start do
  add_filter %r{^/test/}
end