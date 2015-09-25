class GiphysController < ApplicationController
  def index
    render json: Giphy.new("123").condition_gif
  end

  def show
  end
end
