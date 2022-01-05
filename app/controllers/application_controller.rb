class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  
  get "/todo_list" do
    todo_list = Todolist.all
    todo_list.to_json
  end
  # - **Read** a list of all todos

  

end
