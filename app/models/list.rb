class List < ActiveRecord::Base
    has_many :todos
    
    def self.todoCreator(name, status, list_id)
        Todo.create(name: todo_name, status: status, list_id: list_id)
    end

    def deleteTodo(todo)
        self.todos.where("id =#{todo.id}").destroy_all

    end
    # List.first.deleteTodo(Todo.find(1))

      

    def todo_names
        self.todos.pluck(:name)
    end

    #Todo.first.edit("toast")





   





end