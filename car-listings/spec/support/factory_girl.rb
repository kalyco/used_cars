require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end
end
FactoryGirl.define do
  factory :manufacturer do
    name "hyundai"
    country "South Korea"
  end
end
FactoryGirl.define do
  factory :car do
    manufacturer
    model "elantra"
    color "gray"
    year 2012
    mileage 52400
  end
end
