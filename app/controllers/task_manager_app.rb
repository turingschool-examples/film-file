class TaskManager < Sinatra::Base
  get '/tasks' do
    erb :tasks_index
  end
end
