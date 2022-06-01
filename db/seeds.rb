# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  flat = Flat.new(name: Faker::Name.last_name,
                  address: Faker::Address.street_address,
                  description: Faker::Marketing.buzzwords,
                  price_per_night: [50, 60, 70, 80, 90].sample,
                  number_of_guests: [1, 2, 3, 4, 5, 6].sample)
  flat.save!
end
