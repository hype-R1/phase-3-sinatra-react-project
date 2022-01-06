class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.integer :todo_id
      
    end
  end
end
