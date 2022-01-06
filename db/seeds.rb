puts "🌱 Seeding spices..."

puts "Deleting old data..."
Todo.destroy_all
List.destroy_all
# User.destroy_all
# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
# Found this in the code challange and it makes sense to add it

# Seed your database here


puts "Creating List"
list1 = List.create()

puts "Creating todos..."
todo1 = Todo.create(todo_id: 1, todo_name: "Take out the trash", status: false, list_id: list1.id)
todo2 = Todo.create(todo_id: 2, todo_name: "Vacuum the floors", status: false, list_id: list1.id)
todo3 = Todo.create(todo_id: 3, todo_name: "Go grocery shopping", status: false, list_id: list1.id)
todo4 = Todo.create(todo_id: 4, todo_name: "Clean the bathroom", status: false, list_id: list1.id)
todo5 = Todo.create(todo_id: 5, todo_name: "Cook dinner", status: false, list_id: list1.id)
todo6 = Todo.create(todo_id: 6, todo_name: "Take a shower", status: false, list_id: list1.id)



puts "✅ Done seeding!"
