class ConditionGifsController < ApplicationController
  def index
    render json: ConditionGif.new(params[:zip]).condition
  end

  def show

  end
end
