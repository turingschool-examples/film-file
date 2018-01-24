class FilmFile < Sinatra::Base

  get '/films' do
    @films = Film.all
    erb :"films/index"
  end

  get '/films/:id' do
    require "pry"; binding.pry
    @film = Film.find(params[:id])
    erb :"films/show"
  end

end
