# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
User.create(name: Faker::Name.name_with_middle,
            email: Faker::Internet.free_email)
end

200.times do
  Location.create(name: Faker::Name.name,
                  street_address: Faker::Address.street_address,
                  city: Faker::Address.city,
                  state: Faker::Address.state_abbr,
                  postal_code: Faker::Address.zip)
end

20.times do
  Itinerary.create(user_id: (User.find(Random.rand(20)+1)).id,
                   name: Faker::Name.name,
                   description: Faker::Hipster.sentence)
end

20.times do
  # byebug
  Stop.create(itinerary_id: (Itinerary.find(Random.rand(20)+1)).id,
              location_id: (User.find(Random.rand(20)+1)).id)
end
