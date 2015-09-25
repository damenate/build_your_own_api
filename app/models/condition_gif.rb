class ConditionGif
  #attr_reader :weather, :gif, :response
  def initialize(sweetgif)
    @weather = CurrentCondition.new("zip")
    @gif = Giphy.new("zip")
    #@response = get_response
  end

  def combo
    rainy = CurrentCondition.new("zip").condition
    video = Giphy.new("zip").condition_gif
    case
    when rainy.match(/(rain)/i)
      return video
    # when @response["current_observation"]["weather"].match(/(sun)/i)
    #   return @response["data"].sample["images"]["fixed_height"]["url"]
    end
  end
end
