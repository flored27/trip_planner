require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
User.create(name: Faker::Name.name,
            email: Faker::Internet.free_email)
end


# ny_places = File.read("./db/seeds/nyc.csv")
# ny_places = CSV.parse(ny_places)
#
# ny_places.each do |row|
#   Location.create(:name => row[0], :street_address => "#{row[2]} #{row[3]}", :city => row[1], :state => row[5], :postal_code => row[4])
# end

nc_places = File.read("./db/seeds/nc.csv")
nc_places = CSV.parse(nc_places)

nc_places.each do |row|
  Location.create(:name => row[0], :street_address => "#{row[2]} #{row[3]}", :city => row[1], :state => row[5], :postal_code => row[4])
end

hawaii_places = File.read("./db/seeds/hawaii.csv")
hawaii_places = CSV.parse(hawaii_places)

hawaii_places.each do |row|
  Location.create(:name => row[0], :street_address => "#{row[2]} #{row[3]}", :city => row[1], :state => row[5], :postal_code => row[4])
end



20.times do
  Itinerary.create(user_id: (User.find(Random.rand(20)+1)).id,
                   name: Faker::Name.name,
                   description: Faker::Hipster.sentence)
end

100.times do
  # byebug
  Stop.create(itinerary_id: (Itinerary.find(Random.rand(20)+1)).id,
              location_id: (Location.find(Random.rand(200)+1)).id)
end
