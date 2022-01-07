class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.integer :list_id
      t.string :name
      
    end
  end
end
