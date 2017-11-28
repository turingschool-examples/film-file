class FilmFile < Sinatra::Base
<<<<<<< HEAD

=======
>>>>>>> 1710_live
  get '/films' do
    @films = Film.all
    erb :"films/index"
  end
<<<<<<< HEAD

=======
>>>>>>> 1710_live
end
