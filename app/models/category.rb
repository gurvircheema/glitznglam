class Category < ApplicationRecord
  has_many :products
  has_one_attached :image
  validates_presence_of :name
end
