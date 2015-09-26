class RainGif
def initialize(zip)
  @zip = zip
  @response = get_response
end

  private def get_response
    file = File.join(Rails.root, 'test','models','json_gifs','rain.json')
    JSON.parse(File.read(file))
  end

# private def get_response
#   HTTParty.get(http://api.giphy.com/v1/gifs/search?q=#{condition}&api_key=dc6zaTOxFJmzC)
# end

  def condition_gif
    @response["data"].sample["images"]["fixed_height"]["url"]
  end
end
