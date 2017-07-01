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
    @continent = Continent.new(params.require(:continent).permit(:name))

    if @continent.save
      redirect_to @continent
    else
      render 'edit'
    end
  end

  def update
  @continent = Continent.find(params[:id])
  if @continent.update_attributes(params.require(:continent).permit(:name))
    redirect_to @continent
  else
    render 'edit'
  end
end

def destroy
  @continent = Continent.find(params[:id])
  @continent.destroy
  redirect_to root_path
end
end
