class Todo < ActiveRecord::Base
    belongs_to :list

    def checked
        self.update(status: true)
    end

    # if checked it is completed 
    
    
    def unchecked
        self.update(status: false)
    end
    # if unchecked it is a todo

    def edit(name)
        self.update(name: todo_name)
    end
    # Todo.first.edit("toast")

    def deleteTodo(todo)
        self.todos.where("id =#{todo.id}").destroy_all

    end

    # Todo.first.deleteTodo(Todo.find(1))


    




    
end