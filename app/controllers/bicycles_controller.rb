class BicyclesController < ApplicationController
  def index
    @bicycles = Bicycle.all
  end

  def show
    @bicycle = Bicycle.find(params[:id])
  end

  def new
    @bicycle = Bicycle.new
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)
    if @bicycle.save
      redirect_to bicycle_path(@bicycle)
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def delete
  end

  private

  def bicycle_params
    params.require(:bicycle).permit(:description, :address, :price_per_day, :type, :brand, :photo)
  end
end
