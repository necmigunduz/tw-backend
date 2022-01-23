FactoryBot.define do
    factory :question do
      q_text { Faker::Lorem.sentence }
      image { Faker::Lorem.word }
    end
  end