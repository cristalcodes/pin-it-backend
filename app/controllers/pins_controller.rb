class PinsController < ApplicationController

  def index
    pins = Pin.order('created_at DESC')
    render json: pins, except: [:created_at, :updated_at]
  end

  def new
     pin = Pin.new
     ip.address = request.ip
  end

  def show
    pin = Pin.find_by(id: params[:id])
    if pin
      render json: pin, except: [:address, :latitude, :longitude, :created_at, :updated_at], include: {memories: {except: [:created_at, :updated_at, :pin_id] }}
    else
      render json: 'Error: The pin you are searching for does not exist.'
    end
  end

  def create
    pin = Pin.new(pin_params)
    if pin.save
      render json: pin
    else
      render json: pin.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    pin = Pin.find(params[:id])
    pin.destroy
  end




  private

  def pin_params
    params.require(:pin).permit(:label, :address)
  end

end
