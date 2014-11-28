class OptionsController < ApplicationController

  def index
    respond_with Option.all
  end
end
