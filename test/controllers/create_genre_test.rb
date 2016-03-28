require './test/test_helper'

class CreateGenreTest < Minitest::Test
  include Rack::Test::Methods     # allows us to use get, post, last_request, etc.

  def app     # def app is something that Rack::Test is looking for
    FilmFile
  end

  def setup
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end

  def test_create_a_genre_with_valid_attributes
    post '/genres', { genre: { name: "Cartoon" } }
    assert_equal 1, Genre.count
    assert_equal 200, last_response.status
    assert_equal "Genre created.", last_response.body
  end

  def test_cannot_create_a_genre_without_a_name
    post '/genres', { genre: { } }
    assert_equal 0, Genre.count
    assert_equal 400, last_response.status
    assert_equal "missing name", last_response.body
  end
end
