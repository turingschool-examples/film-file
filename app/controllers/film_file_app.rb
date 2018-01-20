class FilmFile < Sinatra::Base

  get '/films' do
    erb :"films/index"
  end

end
