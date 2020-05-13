# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do |flat|
  flat = Flat.create!(
    name: Faker::Marketing.buzzwords.capitalize,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence(word_count: rand(15..20)),
    price_per_night: rand(25..100),
    number_of_guests: rand(2..8),
    photo_url: 'https://source.unsplash.com/random'
  )
end