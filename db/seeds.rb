# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bicycle.destroy_all

15.times do
  Bicycle.create(description: Faker::Quotes::Shakespeare.hamlet_quote,
                 address: Faker::Address.zip_code,
                 price_per_day: rand(8..30),
                 category: ['Road', 'Mountain', 'Touring', 'Beach', 'Fix Gear'].sample,
                 brand: ['Trek', 'Giant', 'Specialized', 'Surly', 'Cannondale', 'Ghose', 'Polygon', 'Schwinn', 'Fuji', 'BMX'].sample,
                 user_id: rand(1..10),
                 photo: "image/upload/v1559037199/iatrdn478lropqzsbp0y.jpg")
end
