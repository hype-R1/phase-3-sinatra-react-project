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

    def edit(todo_name)
        self.update(todo_name: todo_name)
    end

    # Todo.first.edit("toast")

    




    
end