class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :todo_name
      t.boolean :status
    end
  end
end
