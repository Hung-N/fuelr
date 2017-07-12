class LocationsController < ApplicationController

  def new
    @location = Location.new
  end

  def create
    @location = Location.new params.require(:location).permit([:address, :streetname, :city, :postalcode])
    @location.user = current_user
    if @location.save
      puts 'success'
      redirect_to root_path
    else
      puts 'failed'
    end
  end

  def destroy
    @location = Location.find params[:id]
  end

end
