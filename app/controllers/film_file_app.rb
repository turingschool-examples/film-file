class FilmFile < Sinatra::Base

  get '/' do
    erb :greeting
  end

  get '/films' do
    @films = Film.all
    erb :films_index
  end
end
