class PinsController < ApplicationController

  def index
    pins = Pin.order('created_at DESC')
    render json: pins
  end

  def new
     pin = Pin.new
     ip.address = request.ip
  end

  def show
    pin = Pin.find(id: params[:id])
  end

  def create
    pin = Pin.new(pin_params)
    if pin.save
      render json: pin
    else
      render json: pin.errors.full_messages, status: :unprocessable_entity
    end
  end



  private

  def pin_params
    params.require(:pin).permit(:name, :label, :street, :city, :state, :zip)
  end

end
