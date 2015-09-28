class CurrentConditionsController < ApplicationController
  def index
    render json: CurrentCondition.new(params[:zip]).condition
  end

  def show
    render json: CurrentCondition.new(params[:zip]).condition
  end
end







#render json: CurrentCondition.new(params[:zip]).condition
