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
list1 = List.create(list_id: 1, name: "checked")
list2 = List.create(list_id: 2, name: "unchecked")
list3 = List.create(list_id: 3, name: "all")

puts "Creating todos..."
20.times{Todo.create( name: Faker::Name.name, status: false, list_id: 1)}
todo2 = Todo.create( name: "Vacuum the floors", status: false, list_id: 1)
todo3 = Todo.create( name: "Go grocery shopping", status: false, list_id: 2)
todo4 = Todo.create( name: "Clean the bathroom", status: false, list_id: 3)
todo5 = Todo.create( name: "Cook dinner", status: false, list_id: 2)
todo6 = Todo.create( name: "Take a shower", status: false, list_id: 3)



puts "✅ Done seeding!"


#  bundle exec rake db:seed:replant

