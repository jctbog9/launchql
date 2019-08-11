require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    first_name { "Factory" }
    last_name { "Bot" }
    password { "password" }
    password_confirmation { "password" }
  end

  factory :pet do
    name { "spot" }
    species { "pet" }
    age { 1 }
    adopted_at { Date.new }
  end
end
