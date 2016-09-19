class CarriagesController < ApplicationController
  before_action :set_carriage, only: [:show, :edit, :update, :destroy]
  before_action :set_train, only: [:new, :create]

  def new
    @carriage = Carriage.new
  end

  def create
    @carriage = @train.carriages.new(carriage_params)

    if @carriage.save
      redirect_to @train
    else
      render :new
    end
  end

  def show
  end

  def update
    if @carriage.update(carriage_params)
      redirect_to @carriage.train
    else
      render :edit
    end
  end

  def destroy
    @carriage.delete
    redirect_to @carriage.train
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_carriage
    @carriage = Carriage.find(params[:id])
  end

  def carriage_params
    params.require(:carriage).permit(:number, :lower_places, :upper_places, :side_lower_places, :side_upper_places, :seating_places, :train_id, :type)
  end
end
