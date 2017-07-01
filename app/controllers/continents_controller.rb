class ContinentsController < ApplicationController
  def index
    @continents = Continent.all.order(:name)
  end

  def show
    @continent = Continent.find(params[:id])

  end

  def new
    @continent = Continent.new
  end

  def edit
    @continent = Continent.new(continent_params)
    if @continent.save
      redirect_to @continent
    else
      render 'edit'
    end
  end
end
