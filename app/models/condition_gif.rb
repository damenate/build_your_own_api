# class ConditionGif
#   #attr_reader :weather, :gif, :response
#   def initialize(sweetgif)
#     # @weather = CurrentCondition.new("zip")
#     # @giphy = Gif.new("zip")
#     #@response = get_response
#   end
#
#   def combo
#     forecast = CurrentCondition.new(params[:zip]).condition
#     giphy = Gif.new(params[:zip]).condition_gif
#     idk_gif = IdkGif.new(params[:zip]).condition_gif
#     # sun_gif = SunGif.new("zip").condition_gif
#     # idk_gif = IdkGif.new("zip").condition_gif
#
#     if forecast.match(/(rain)/i)
#       giphy
#     elsif forecast.match(/(overcast)/i)
#       giphy
#     elsif forecast.match(/(sun)/i)
#       giphy
#     elsif forecast.match(/(partly)/i)
#       giphy
#     elsif forecast.match(/(cloud)/i)
#       giphy
#     else
#       idk_gif
#     end
#   end
# end
