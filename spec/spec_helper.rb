ENV['RACK_ENV'] = 'test'

require 'rspec'
require File.expand_path('../../config/environment.rb', __FILE__)
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
end

