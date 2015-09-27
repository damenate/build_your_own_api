class ConditionGifsController < ApplicationController
  def index
    render json: ConditionGif.new(params[:zip]).combo
  end

  def show

  end
end
