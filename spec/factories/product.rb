require 'ffaker'

FactoryBot.define do
  factory :product do
    name { FFaker::Product.product_name }
    price_in_cents { rand(500..10000) }
    description { FFaker::Lorem.phrase }
  end
end