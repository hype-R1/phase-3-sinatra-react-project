class TodosController < ApplicationController


get "/todo" do
    todos = Todo.all
    todos.to_json
    
  end 

  #Create a todo
  post "/todo" do 
    todo = Todo.create({name:params[:name], status:params[:status]})
    todo.to_json
  end 
  #Update a todo

  patch "/todo/:id" do 
    todo = Todo.find(params[:id])
    todo.update({name:params[:name],  status:params[:status]})
    todo.to_json
  end 
  #Delete a todo

  delete "/todo/:id" do

    todo = todo.find(params[:id])
    todo.destroy
  
    {message: 'todo deleted'}.to_json
  end 
end 