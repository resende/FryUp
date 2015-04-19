class WelcomeController < ApplicationController
  def index
    @foods = Food.all
  end
  
  # def index
  #   @Plates = Plate.all
  # end


end