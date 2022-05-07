class HomesController < ApplicationController
  def index
    @products = Product.includes(:category, :product_detail).limit(8).newest
    @hot_sell = Product.hot_sell(Settings.size_hot_sell)
  end

  def contact; end
end
