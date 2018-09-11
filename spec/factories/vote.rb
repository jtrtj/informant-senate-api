FactoryBot.define do
  factory :vote do
    number { Faker::IDNumber.spanish_citizen_number }
    question { Faker::Lorem.question }
    description { Faker::DrWho.quote }
    type_of { 1 }
  end
end
