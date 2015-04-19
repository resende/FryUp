class WelcomeController < ApplicationController
  def index
    @foods = Food.all
  end
  
  # def index
  #   @plates = Plate.all
  # end


end