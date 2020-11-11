# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

require 'coveralls/rake/task'
Coveralls::RakeTask.new

Rails.application.load_tasks

task :default => [:spec, 'coveralls:push']

desc 'run RSpec'
task :spec do
  sh 'rspec spec'
  sh 'rake cucumber'
end