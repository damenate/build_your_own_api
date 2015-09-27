class CurrentCondition
  attr_reader :zip

  def initialize(zip)
    @zip = zip
    @response = get_response
  end

  def condition
    @response["current_observation"]["weather"]
  end

  # private def get_response
  #   file = File.join(Rails.root, 'test','models','json_weather','rain_weather.json')
  #   JSON.parse(File.read(file))
  # end
  private def get_response
    key = ENV['WUNDERGROUND_KEY']
    HTTParty.get("http://api.wunderground.com/api/#{key}/conditions/q/#{@zip}.json")
  end
end
