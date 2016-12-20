class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end

  def destroy
    Car.find(params[:id]).destroy
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:name)
  end
end
