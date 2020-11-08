require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
  createddirector = Director.create!({:name => Faker::Movies::Lebowski.actor, :birthday =>Faker::Date.between(from: '1900-01-01', to: '2020-11-01'), :summary => Faker::Quote.robin})
  puts createddirector
end