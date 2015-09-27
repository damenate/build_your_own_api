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

    if forecast.match(/(rain)/i)
      HTTParty.get("http://api.giphy.com/v1/gifs/search?q={#{forecast}}&api_key=dc6zaTOxFJmzC")
    elsif forecast.match(/(overcast)/i)
      HTTParty.get("http://api.giphy.com/v1/gifs/search?q={#{forecast}}&api_key=dc6zaTOxFJmzC")
    elsif forecast.match(/(sun)/i)
      HTTParty.get("http://api.giphy.com/v1/gifs/search?q={#{forecast}}&api_key=dc6zaTOxFJmzC")
    elsif forecast.match(/(partly)/i)
      HTTParty.get("http://api.giphy.com/v1/gifs/search?q={#{forecast}}&api_key=dc6zaTOxFJmzC")
    elsif forecast.match(/(cloud)/i)
      HTTParty.get("http://api.giphy.com/v1/gifs/search?q={#{forecast}}&api_key=dc6zaTOxFJmzC")
    elsif forecast.match(/(thunderstorm)/i)
      HTTParty.get("http://api.giphy.com/v1/gifs/search?q={#{forecast}}&api_key=dc6zaTOxFJmzC")
    else
      HTTParty.get("http://api.giphy.com/v1/gifs/search?q=baby-confused-idk&api_key=dc6zaTOxFJmzC")
    end
  end
end
