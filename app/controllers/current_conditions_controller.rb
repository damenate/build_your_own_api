class CurrentConditionsController < ApplicationController
  def index
    render json: CurrentCondition.new("1231234").condition
  end

  def show

  end
end







#render json: CurrentCondition.new(params[:zip]).condition
