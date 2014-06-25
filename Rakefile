require 'bundler'
Bundler.require

require 'rack'
require 'fron'
require 'opal'
require 'opal/rspec/rake_task'

task :test do
	Opal::RSpec::RakeTask.new
  Rake::Task['opal:rspec'].invoke
end

task :server do
  server = Opal::Server.new do |s|
    s.main = 'app'
    s.append_path 'source'
    s.debug = false
  end
  Rack::Server.start app: server
end
