class ConditionGifsController < ApplicationController
  def index
    render json: ConditionGif.new("sweetgif").combo
  end

  def show

  end
end
