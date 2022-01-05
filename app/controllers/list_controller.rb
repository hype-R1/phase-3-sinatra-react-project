class TodoListController < ApplicationController


get "/list" do
    todos = todo.all
    todos.to_json({include: [user:{only: :user}]})
    # todos.to_json({include: [clinic:{only: :clinic_name}], except: :clinic_id})
  end 

  #Create a todo
  post "/list" do 
    todo = todo.create({name:params[:name], user:params[:user], active:params[:active]]})
    todo.to_json(include: :user)
  end 
  #Update a todo

  patch "/list/:id" do 
    todo = todo.find(params[:id])
    todo.update({name:params[:name],  user:params[:user], active:params[:active]})
    todo.to_json(include: :user)
  end 
  #Delete a todo

  delete "/todos/:id" do

    todo = todo.find(params[:id])
    todo.destroy
  
    {message: 'todo deleted'}.to_json
  end 