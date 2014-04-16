FactoryGirl.define do
  factory :listing do
    name Faker::Internet.user_name
    body Faker::Lorem.paragraph
    price Faker::Number.digit
  end
end
