FactoryBot.define do
    factory :item do
      o_text { Faker::StarWars.character }
      score { Faker::Number.number(digits: 10) }
      question_id nil
    end
  end