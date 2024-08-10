class Product < ApplicationRecord
  has_many_attached :images
  belongs_to :category, optional: true
end
