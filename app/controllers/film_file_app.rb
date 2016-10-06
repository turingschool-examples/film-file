class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :films_index
  end

  get '/genres' do
    @genres = Genre.all
    erb :"genres/index"
  end

  get '/directors/:id' do
    @director = Director.find(params[:id])
    erb :"directors/show"
  end
end
