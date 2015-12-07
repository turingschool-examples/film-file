class FilmFile < Sinatra::Base  
  get '/films' do
    @films = Film.all
    erb :films_index
  end
  get '/genres' do
    @genres = Genre.all
    erb :genres_index
  end

  get '/directors/:id' do |id|
    @director = Director.find(id)
    erb :director_show
  end
end
