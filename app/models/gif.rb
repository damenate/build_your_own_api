class Gif
  def initialize(zip)
    @zip = zip
    @response = get_response
  end

  def condition_gif
    @response["data"].sample["images"]["fixed_height"]["url"]
  end

  private def get_response
    forecast = CurrentCondition.new(@zip).condition
    giphy = HTTParty.get("http://api.giphy.com/v1/gifs/search?q={#{forecast}}&api_key=dc6zaTOxFJmzC")

    if forecast.match(/(rain)/i)
      giphy
    elsif forecast.match(/(overcast)/i)
      giphy
    elsif forecast.match(/(sun)/i)
      giphy
    elsif forecast.match(/(partly)/i)
      giphy
    elsif forecast.match(/(cloud)/i)
      giphy
    elsif forecast.match(/(thunderstorm)/i)
      giphy
    else
      HTTParty.get("http://api.giphy.com/v1/gifs/search?q=baby-confused-idk&api_key=dc6zaTOxFJmzC")
    end
  end
end
