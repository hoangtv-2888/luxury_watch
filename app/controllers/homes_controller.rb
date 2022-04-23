class HomesController < ApplicationController
  def index
    @products = Product.includes(:category, :product_detail).newest
    @pagy, @products = pagy @products, items: Settings.items_per_page
    @hot_sell = Product.hot_sell(Settings.size_hot_sell)
  end

  def contact; end
end
