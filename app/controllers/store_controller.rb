class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time = Time.now
    index_view_counter
  end
  def index_view_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
end
