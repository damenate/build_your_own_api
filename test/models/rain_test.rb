require 'test_helper'

# class RainTest
#   private def get_response
#     file = File.join(Rails.root, 'test','models','json_weather','rain_weather.json')
#     File.read(file)
#     #data_hash = JSON.parse(file)
#   end
# end

class RainModelTest < ActiveSupport::TestCase

  def test_condition_at_location
    assert_equal "Rain", Rain.new("29115").condition
  end

end
