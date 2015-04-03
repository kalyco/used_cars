class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find_by(id: params[:id])
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      flash[:notice] = "You have added a new manufacturer!"
      redirect_to manufacturers_path
    else
      flash[:alert] = "Manufacturer not added. Check requirements!"
      render :new
    end
  end

  protected

  def manufacturer_params
    params.require(:manufacturer).permit(
      :name, :country
    )
  end
end
