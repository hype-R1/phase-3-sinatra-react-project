class List < ActiveRecord::Base
    has_many :todos
    
    def self.todoCreator(todo_id, todo_name, status, list_id)
        Todo.create(todo_id: todo_id, todo_name: todo_name, status: status, list_id: list_id)
    end

end