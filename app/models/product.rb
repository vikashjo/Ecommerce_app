class Product < ApplicationRecord
  has_many_attached :images
  belongs_to :category, optional: true
  has_many :cart_items 
end
