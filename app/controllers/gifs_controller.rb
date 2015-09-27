class GifsController < ApplicationController
  def index
    render json: Gif.new(params[:zip]).condition_gif
  end

  def show
    render json: Gif.new(params[:zip]).condition_gif
  end
end
