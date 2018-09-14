FactoryBot.define do
  factory :vote do
    number { Faker::IDNumber.spanish_citizen_number }
    question { Faker::Lorem.question }
    description { Faker::DrWho.quote }
    type_of { 1 }
    result { Faker::DrWho.quote }
    democrat_yes { Faker::Number.between(1, 50) }
    democrat_no { Faker::Number.between(1, 50) }
    democrat_not_voting { Faker::Number.between(1, 50) }
    republican_yes { Faker::Number.between(1, 50) }
    republican_no { Faker::Number.between(1, 50) }
    republican_not_voting { Faker::Number.between(1, 50) }
    independent_yes { Faker::Number.between(1, 50) }
    independent_no { Faker::Number.between(1, 50) }
    independent_not_voting { Faker::Number.between(1, 50) }
    total_yes { Faker::Number.between(1, 50) }
    total_no { Faker::Number.between(1, 50) }
    total_not_voting { Faker::Number.between(1, 50) }
  end
end
