FactoryBot.define do
  factory :article do
    vote_id { Faker::Number.between(1, 50) }
    title { Faker::DrWho.character }
    description { Faker::DrWho.quote }
    url { Faker::Internet.domain_name }
    image_url { Faker::Placeholdit.image("50x50") }
    source { Faker::Hipster.word }
  end
end