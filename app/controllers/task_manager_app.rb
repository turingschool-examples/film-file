class TaskManager < Sinatra::Base
  get '/tasks' do
    erb :index
  end
end
