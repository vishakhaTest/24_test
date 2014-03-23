require 'sinatra'
require 'dotenv'

env = ENV['RAILS_ENV'].nil? ? ENV['RACK_ENV'] : ENV['RAILS_ENV']
path = ".env.#{env}"
Dotenv.load(path, '.env')

require File.expand_path '../24_test.rb', __FILE__
run 24Test.new