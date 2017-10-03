class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :films_index
  end

  get '/example1' do
    erb :example1
  end

  get '/example2' do 
   erb :example2
 end
end
