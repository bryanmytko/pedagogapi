1000.times do
  Superhero.create(
    first_name:  Faker::Name.first_name,
    last_name:   Faker::Name.last_name,
    occupation:  Faker::Company.profession.capitalize,
    super_power: Faker::Superhero.power,
    hero_name:   Faker::Superhero.name
  )
end
