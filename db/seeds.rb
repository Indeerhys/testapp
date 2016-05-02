# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Worker.create({
  :full_name => "Rhys Maughan",
  :worker_level => "Padawan",
  :location => "Margate",
  :specialty => "Ruby on Rails",
  :contact_number => "07743487956"
  })

  25.times do
    Worker.create({
      :full_name => Faker::Name.name,
      :worker_level => Faker::StarWars.character,
      :location => Faker::StarWars.planet,
      :specialty => Faker::StarWars.specie,
      :contact_number => Faker::PhoneNumber.phone_number
    })
  end
