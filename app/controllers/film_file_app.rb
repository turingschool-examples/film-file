class FilmFile < Sinatra::Base
  get "/films" do
    @films = Film.all
    erb :"films/index"
  end

  get "/films/new" do
    erb :"films/new"
  end
end
