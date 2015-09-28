require 'test_helper'

class GifsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    gif1 = Gif.new(params[:zip]).condition_gif
    
    get :show
    assert_response :success
  end

end
