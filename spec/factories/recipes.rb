FactoryBot.define do
    factory :recipe do
      name { Faker::Food.dish }
      preparationTime { rand(10..60) }
      cookingTime { rand(10..60) }
      description { Faker::Lorem.sentence }
      public { true }
      user
    end
  end
  