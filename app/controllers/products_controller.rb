class ProductsController < ApplicationController
  def index
    @starters = Product.where(category: 'starter')
    @main_courses = Product.where(category: 'main')
    @desserts = Product.where(category: 'dessert')
  end
end
