# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

User.destroy_all
Book.destroy_all

10.times do
  User.create ({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    admin: false,
    author: true
  })
  print "."
end
puts "Ding! Authors created."
puts ""
100.times do
  Book.create ({
    title: Faker::Book.title,
    body: Faker::Lorem.sentence(13, true, 4),
    author: User.first
  })
  print "*"
end
