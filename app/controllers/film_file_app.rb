class FilmFile < Sinatra::Base
  get '/films' do
    erb :films_index
  end
end
