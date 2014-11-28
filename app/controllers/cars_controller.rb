class CarsController < ApplicationController

  def index
    respond_with Car.all
  end

  def show
    respond_with Car.find(params[:id])
  end
end
