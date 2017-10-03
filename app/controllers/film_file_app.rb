class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :films_index
  end
end
