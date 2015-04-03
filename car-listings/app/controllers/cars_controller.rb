class CarsController < ApplicationController
  def new
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car.manufacturer = @manufacturer
    if @car.save
      flash[:notice] = "you have added a new car."
      redirect_to manufacturer_path(@manufacturer)
    else
      flash[:alert] = "car not added. check requirements"
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(
    :model, :year, :color, :mileage
    )  end
end
