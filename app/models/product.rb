class Product < ApplicationRecord
  validates_presence_of :category, :name, :price
end
