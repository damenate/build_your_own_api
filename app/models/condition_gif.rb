class ConditionGif
  #attr_reader :weather, :gif, :response
  def initialize(sweetgif)
    @weather = CurrentCondition.new("zip")
    @gif = RainGif.new("zip")
    #@response = get_response
  end

  def combo
    forecast = CurrentCondition.new(params[:zip]).condition
    rain_gif = RainGif.new("zip").condition_gif
    idk_gif = IdkGif.new("zip").condition_gif
    # sun_gif = SunGif.new("zip").condition_gif
    # idk_gif = IdkGif.new("zip").condition_gif
    case
    when forecast.match(/(rain)/i)
      return rain_gif
    # when forecast.match(/(sun)/i)
    #   return sun_gif
      else idk_gif
    end
    idk_gif
  end
end
