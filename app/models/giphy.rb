class Giphy
def initialize(gif)
  @gif = gif
  @response = get_response
end

private def get_response
  file = File.join(Rails.root, 'test','models','json_gifs','rain.json')
  JSON.parse(File.read(file))
end

# private def get_response
#   key = ENV['WUNDERGROUND_KEY']
#   HTTParty.get("http://api.wunderground.com/api/#{key}/conditions/q/SC/#{@zip}.json")
#   end

def condition_gif
  @response["data"].sample["images"]["fixed_height"]["url"]
end
end
