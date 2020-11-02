SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start 'rails' do
  add_filter %r{^/test/}
end