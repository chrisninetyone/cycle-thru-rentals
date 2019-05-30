# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Booking.destroy_all
Bicycle.destroy_all
User.destroy_all

3.times do
  puts "creating a user and 1-2 bikes"
  user = User.create!(
    name: "tommy",
    email: Faker::Internet.email,
    password: "123456"
  )
  rand(1..2).times do
    bicycle = Bicycle.new(
      description: Faker::Quotes::Shakespeare.hamlet_quote,
      address: Faker::Address.zip_code,
      price_per_day: rand(8..30),
      category: ['Road', 'Mountain', 'Touring', 'Beach', 'Fix Gear'].sample,
      brand: ['Trek', 'Giant', 'Specialized', 'Surly', 'Cannondale', 'Ghose', 'Polygon', 'Schwinn', 'Fuji', 'BMX'].sample,
      user: user
    )
    bicycle.remote_photo_url = "https://static1.squarespace.com/static/5b8d27689f8770df7a9bc1c0/t/5ba1226d758d46165fb0ce41/1550506981302/A+bike+made+of+environmentally+friendly+bamboo"
    bicycle.save
  end
end
