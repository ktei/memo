require 'faker'

FactoryGirl.define do 
  factory :user do
    email Faker::Internet.email
    password 'blizzard'
    name Faker::Name.name
  end

  sequence :email do |n|
    "user-#{n}@example.com"
  end
end