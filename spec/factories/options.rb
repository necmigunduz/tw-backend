FactoryBot.define do
    factory :option do
      o_text { Faker::Lorem.word }
      score { Faker::Number.number(digits: 10) }
      question_id nil
    end
  end