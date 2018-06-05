require 'ffaker'

FactoryBot.define do
  factory :category do
    name { FFaker::Product.product_name }
    description { FFaker::Lorem.phrase }
  end
end