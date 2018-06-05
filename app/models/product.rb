class Product < ApplicationRecord
  belongs_to :category
  validates_presence_of :name, :description, :price_in_cents
  has_many_attached :images
end
