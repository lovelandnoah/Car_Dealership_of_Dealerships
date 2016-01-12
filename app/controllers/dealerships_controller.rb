class DealershipsController < ApplicationController
  def index
  	@dealership = Dealership.all
  end

  def show
  	@dealership = Dealership.find(params[:id])
  	@salesmen = Salesman.where(dealership_id: params[:id])
  	@cars = Car.where(salesman_id: params[:id])
  end

  def new
  	@dealership = Dealership.new
  end
end
