class TodosController < ApplicationController


get "/todo" do
    todos = todo.all
    todos.to_json({include: [user:{only: :user}]})
   
  end 

  #Create a todo
  post "/todo" do 
    todo = todo.create({name:params[:name], user:params[:user], active:params[:active]})
    todo.to_json(include: :user)
  end 
  #Update a todo

  patch "/todo/:id" do 
    todo = todo.find(params[:id])
    todo.update({name:params[:name],  user:params[:user], active:params[:active]})
    todo.to_json(include: :user)
  end 
  #Delete a todo

  delete "/todo/:id" do

    todo = todo.find(params[:id])
    todo.destroy
  
    {message: 'todo deleted'}.to_json
  end 
end 