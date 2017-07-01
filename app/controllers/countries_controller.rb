class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end
 def show
   country_find
 end
 def new
   @country = Country.new
 end
 def update
    country_find
    if @country.update_attributes(country_params)
      redirect_to @country
    else
      render 'edit'
    end
  end
  def edit
    country_find
  end
  def create

    @country = Country.new(country_params)
    if @country.save
      redirect_to @country
    else
      render 'new'
    end
  end
  def destroy
    country_find
    @country.destroy
    redirect_to countries_path
  end

  private
  def country_find
    @country = Country.find(params[:id])
  end

  def country_params
    country_params = params.require(:country).permit(:name, :population, :flag_url, :continent_id)
  end

end
