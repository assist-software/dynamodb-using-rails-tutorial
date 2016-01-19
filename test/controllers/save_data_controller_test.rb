require 'test_helper'

class SaveDataControllerTest < ActionController::TestCase
  test "should get save_data" do
    get :save_data
    assert_response :success
  end

end
