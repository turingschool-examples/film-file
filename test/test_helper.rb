ENV["RACK_ENV"] ||= "test"

require 'bundler'
Bundler.require

require File.expand_path("../config/environment", __dir__)
require 'minitest/autorun'
require 'capybara'

Capybara.app = FilmFile
