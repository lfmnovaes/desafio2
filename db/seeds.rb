# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

for i in 1..50 do
  @property = Property.create(name: "Apartment #{i}", description: "This is a great apartment")
  for j in 1..3 do
    @property.photos.create(path: "640x480/#{(i-1)*3+j}.jpg")
  end
end
