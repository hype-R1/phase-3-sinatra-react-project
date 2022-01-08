class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  
  


  get "/todos" do
   Todo.all.to_json
    
  end 

  get "/todo/:id" do
    todo = Todo.find(params[:id])
    todo.to_json
  end
  
  get "/list" do
    List.all.to_json

  end  

  delete "/todo/:id" do

    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  
   
  end 

  patch "/todo/:id" do 
    todo = Todo.find(params[:id])
    todo.update({ name:params[:todo_name],  status:params[:status]})
    todo.to_json
  end 

  post "/todo" do 
    todo = Todo.create({name:params[:todo_name], status:params[:status]})
    todo.to_json
  end 

  

end
