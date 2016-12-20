class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)

    if @bike.save
      redirect_to bikes_path
    else
      render :new
    end
  end

  def destroy
    Bike.find(params[:id]).destroy
    redirect_to bikes_path
  end

  private

  def bike_params
    params.require(:bike).permit(:name)
  end
end
