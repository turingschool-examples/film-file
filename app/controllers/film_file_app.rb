class FilmFile < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/films' do
    @films = Film.all
    erb :"films/index"
  end

  post '/films' do
    @film = Film.new(film_params)
    if @film.save
      redirect "/films/#{@film.id}"
    end
  end

  get '/films/new' do
    @film = Film.new
    erb :"films/new"
  end

  get '/films/:id' do
    @film = Film.find(params[:id])
    erb :"films/show"
  end

  get '/genres' do
    @genres = Genre.all
    erb :"genres/index"
  end

  get '/directors/:id' do
    @director = Director.find(params[:id])
    erb :"directors/show"
  end

  private
  def film_params
    film = params[:film]
    {title: film["title"], year: film["year"].to_i, box_office_sales: film["box_office_sales"].to_i}
  end
end
