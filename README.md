# Weather Gifs Api

# Description
This rails app is designed to take in a zip code and give you a random give related to the current weather condition. We used api's from both wunderground.com and giphy.com to generate the gifs.

# The code
Below is the code in our gif.rb file. Here we pull from the current_conditions.rb file and depending on the current forecast a gif from giphy.com will be pulled up.  


```ruby
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
```
We then generated what was needed in the browser using our GifsController class with the show action.

```ruby
class GifsController < ApplicationController
  def index
    render json: Gif.new(params[:zip]).condition_gif
  end

  def show
    render json: Gif.new(params[:zip]).condition_gif
  end
end
```
