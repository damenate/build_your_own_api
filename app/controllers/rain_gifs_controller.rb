class RainGifsController < ApplicationController
  def index
    render json: RainGif.new("123").condition_gif
  end

  def show
  end
end
