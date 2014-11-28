class OrdersController < ApplicationController

  def create
    respond_with Order.create()
  end
end
