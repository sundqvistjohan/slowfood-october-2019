class Category < ApplicationRecord
    validates_presence_of :name

    have_many :products
end
