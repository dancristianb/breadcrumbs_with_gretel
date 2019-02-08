# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  Album.create(title: Faker::Lorem.words(2).join(' ').titleize,
               description: Faker::Lorem.paragraph(3, true, 4),
               artist: Faker::Name.name,
               price: Faker::Commerce.price)
end