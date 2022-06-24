# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



 Product.create!(name:"Apple iphone", description:"Best phone in the industry", p
rice: 50000)
 Product.create!(name:"DELL computer", description:"Best computer in the industry", p
rice: 45000)
 Product.create!(name:"Camera", description:"Best camera in the industry", p
rice: 80000)

User.create(first_name:"User", last_name:"1", email:"user1@gmail.c
om",password:"12345")
ShoppingCart.create(user_id:User.first.id)