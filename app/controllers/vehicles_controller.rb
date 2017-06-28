class VehiclesController < ApplicationController
  before_action :find_vehicle, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new vehicle_params
    # @vehicle.user = current_user
    if @vehicle.save
      puts 'success'
      redirect_to home_path
    else
      puts 'failed'
    end
  end

  private

  def find_vehicle
    @vehicle = Vehicle.find params[:id]
  end

  def vehicle_params
    vehicle_params = params.require(:vehicle).permit([:make, :model, :year, :fuel_type, :fuel_rating])
  end

end
