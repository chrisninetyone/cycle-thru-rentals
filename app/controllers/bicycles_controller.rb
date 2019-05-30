class BicyclesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bicycle, only: [:edit, :destroy, :show, :update]

  def index
    if params[:query].present?
      @bicycles = Bicycle.where("address ILIKE ?", "%#{params[:query]}%")
      @bicycles = Bicycle.where.not(latitude: nil, longitude: nil)
    else
      @bicycles = Bicycle.all
    end
    map_markers
  end

  def show
    @review = Review.new
    @booking = Booking.new
    authorize @bicycle
  end

  def new
    @bicycle = Bicycle.new
    authorize @bicycle
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)
    authorize @bicycle
    @bicycle.user_id = current_user.id
    if @bicycle.save
      redirect_to bicycle_path(@bicycle)
    else
      render :new
    end
  end

  def update
    authorize @bicycle
    @bicycle.update(bicycle_params)
    if @bicycle.save
      redirect_to bicycle_path(@bicycle)
    else
      render :edit
    end
  end

  def edit
    authorize @bicycle
  end

  def destroy
    @bicycle = Bicycle.find(params[:id])
    authorize @bicycle
    @bicycle.destroy

    redirect_to bicycles_path
  end

  private

  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end

  def bicycle_params
    params.require(:bicycle).permit(:description, :address, :price_per_day, :category, :brand, :photo)
  end

  def map_markers
    @markers = @bicycles.map do |bicycle|
      {
        lat: bicycle.latitude,
        lng: bicycle.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { bicycle: bicycle }),
        image_url: helpers.asset_url('CTlogo.png')
      }
    end
  end
end
