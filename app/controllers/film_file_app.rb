class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :films_index
  end

  get '/genres' do
    @genres = Genre.all
    erb :genres_index
  end

  post '/genres' do
      genre = Genre.new(params[:genre])
    if genre.save
      status 200
      body "Genre created."
    else
      status 400
      body "missing name"
    end
  end
end
