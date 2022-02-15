# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# create default user
Member.create(
  username: 'Constant Presence',
  email: 'constant@email.com',
  password: 'constant@email.com'
)

# create other members
15.times do
  username = Faker::Name.unique.name
  Member.create(
    username: username, 
    email: Faker::Internet.unique.email(name: username),
    password: 'random_password'
  )
end

# create posts
Member.all.each do |member|
  rand(1..2).times do
    member.posts.create!(
      title: Faker::Company.bs,
      content: Faker::Company.catch_phrase
    )
  end
end
