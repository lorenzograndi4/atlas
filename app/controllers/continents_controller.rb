class ContinentsController < ApplicationController
  def index
    @continents = Continent.all.order(:name)
  end

  def show
    @continent = Continent.find_by(params[:id])
    @countries = @continent.all.order(:name)
  end
end
