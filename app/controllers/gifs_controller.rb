class GifsController < ApplicationController
  def index
    render json: Gif.new(params[:zip]).condition_gif
  end

  def show
  end
end
