class Product < ApplicationRecord
  belongs_to :category
  validate :price, :presence => true
end
