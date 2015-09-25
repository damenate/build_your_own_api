class ConditionGif
  attr_reader :weather, :gif, :response
  def initialize(sweetgif)
  #   @weather = CurrentCondition.new(zip)
  #   @gif = Giphy.new(zip)
  #   @response = get_response
  end

  def combo
    case
    when condition.match(/(rain)/i)
      return condition_gif
    # when @response["current_observation"]["weather"].match(/(sun)/i)
    #   return @response["data"].sample["images"]["fixed_height"]["url"]
    end
  end
end
