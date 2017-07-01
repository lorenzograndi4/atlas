class ContinentsController < ApplicationController
  def index
    @continents = Continent.all
    
  end
end
