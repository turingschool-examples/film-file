class FilmFileApp < Sinatra::Base

  get '/' do
    erb :welcome
  end

  get '/films' do
    @films = Film.all
    erb(:"films/index")
  end

  get '/films/:id' do
    @film = Film.find(params[:id])
    erb :"films/show"
  end

end
