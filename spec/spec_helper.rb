ENV['RACK_ENV'] = 'test'

require 'rack/test'
require 'rspec'
require File.expand_path('../../config/environment.rb', __FILE__)
require 'database_cleaner'
require 'capybara/dsl'

Capybara.app = FilmFile

DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|
  c.include Capybara::DSL
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
end

