FactoryGirl.define do
  factory :superhero do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    occupation { Faker::Company.profession }
    hero_name { Faker::Superhero.name }
    first_name { Faker::Superhero.power }
  end
end
