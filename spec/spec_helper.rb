ENV["RACK_ENV"] = "test"

require "bundler"
Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)

require 'capybara/dsl'

Capybara.app = FilmFile
Capybara.save_and_open_page_path = "tmp/capybara"


DatabaseCleaner.strategy = :truncation

RSpec.configure do |config|

  config.include Capybara::DSL

  config.before(:each) do
    DatabaseCleaner.clean
  end

  config.append_after(:each) do
    DatabaseCleaner.clean
  end
end
