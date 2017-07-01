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
    @continent = Continent.find(params[:id])
  end

  def create
    @continent = Continent.new(continent_params)

    if @continent.save
      redirect_to @continent
    else
      render 'edit'
    end
  end

  def update
    @continent = Continent.find(params[:id])

    if @continent.update_attributes(continent_params)
       redirect_to @continent
    else
       render 'edit'
    end
  end

  def delete
    @continent = Continent.find(params[:id])
    @continent.destroy
    redirect_to  continent_path
  end

  private

  def continent_params
    params.require(:continent).permit(:name, :image_url)
  end

end
