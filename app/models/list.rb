class List < ActiveRecord::Base
    has_many :todos
    
    def todoCreator(todo_name, status )
        Todo.create(todo_id: self.id, todo_name: todo_name, status: boolean )
    end

end