# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
property1 = Property.create(name: "THE apartment", description: "This is a great apartment")
for i in 1..5 do
  property1.photos.create(path: "640x480/#{i}.jpg")
end
