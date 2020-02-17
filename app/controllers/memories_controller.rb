class MemoriesController < ApplicationController
  def index
      memories = Memory.order('created_at DESC')
      render json: memories, except: [:created_at, :updated_at] #include: {pin: {only:[:address]}}
  end

    def new
      memory = Memory.new
    end

    def show
      memory = Memory.find_by(id: params[:id])
      if memory
        render json: memory, except: [:created_at, :updated_at]
      else
        render json: "Error: The memory you are searching for does not exist."
      end
    end

    def create
      memory = Memory.create(memory_params)
      if memory.save
        render json: memory
      else
        render json: memory.errors.full_messages, status: :unprocessable_entity
      end
    end

    def edit
      memory = Memory.find(params[:id])
    end

    def update
      memory = Memory.find(params[:id])
      if memory.update(memory_params)
        render json: memory
      else
        render json: memory.errors, status: :unprocessable_entity
      end
    end

    def destroy
      memory = Memory.find(params[:id])
      memory.destroy
    end


    private

    def memory_params
      params.require(:memory).permit(:date, :description, :pin_id)
    end
end
