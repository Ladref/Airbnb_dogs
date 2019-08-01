# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Creation of 10 cities
10.times do
  city = Faker::Address.city
  City.create(city: city)
end

# Creation of the 30 dog_sitters
30.times do
  name = Faker::Name.name
  city_id = rand(1..10)
  DogSitter.create(name: name, city_id: city_id)
end

# Creation of 100 dogs
100.times do
  name = Faker::Name.name
  city_id = rand(1..10)
  breed = Faker::Superhero.name
  Dog.create(name: name, city_id: city_id, breed: breed)
end

# Creation of 200 strolls
200.times do
  dog_id = rand(1..100)
  dog_sitter_id = rand(1..30)
  Strolls.create(dog_id: dog_id, dog_sitter_id: dog_sitter_id)
end
