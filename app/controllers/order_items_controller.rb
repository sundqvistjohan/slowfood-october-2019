class OrderItemsController < ApplicationController
  def create
    product = Product.find(params[:id])
        binding.pry

  end
end
