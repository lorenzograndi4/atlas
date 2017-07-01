class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end
 def show
   @country = Country.find(params[:id])
 end
 def new
   @country = Country.new
 end
 def update
    @country = Country.find(params[:id])

    country_params = params.require(:country).permit(:name, :population, :flag_url, :continent_id)

    if @country.update_attributes(country_params)
      redirect_to @country
    else
      render 'edit'
    end
  end
  def edit
    @country = Country.find(params[:id])
  end
  def create
    country_params = params.require(:country).permit(:name, :population, :flag_url, :continent_id)
    @country = Country.new(country_params)
    if @country.save
      redirect_to @country
    else
      render 'new'
    end
  end
end
