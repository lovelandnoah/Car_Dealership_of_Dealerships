class SalesmenController < ApplicationController
  def show
  	@salesman = Salesman.find(params[:id])
  	@cars = Car.where(salesman_id: params[:id])
  end

  def destroy
  end


  private

  def car_params
  	params.require
  end
end
