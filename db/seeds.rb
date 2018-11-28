# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing Database"
User.delete_all
Category.delete_all
Subcategory.delete_all
Group.delete_all
Choice.delete_all

puts "Generating fake database"

# USERS

puts "Generating 2 standard users"


User.create(
  first_name: "Peter",
  last_name: "Parker",
  phone_number: 123456789,
  email: "peter@parker.com",
password: "123456")

User.create(
  first_name: "Sam",
  last_name: "Spaceown",
  phone_number: 987654321,
  email: "sam@spaceown.com",
password: "123456")

puts "Generating 8 random users"

8.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::Number.number(8),
    email: Faker::Internet.email,
  password: 123456)
end


User.all each do |user|
  Choice.create!(rank: [1..5].sample)
  Choice.create!(rank: [1..5].sample)
  Choice.create!(rank: [1..5].sample)
  Group.create!(location:"JingAn Shanghai",
                meal_date:Faker::Date.between(2.days.ago, Date.today),
                recommended_category: "American" ,
                recommended_restaurant: "Charlies",)
end
