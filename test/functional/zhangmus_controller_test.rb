require 'test_helper'

class ZhangmusControllerTest < ActionController::TestCase
  test "should get search_zhangmus" do
    get :search_zhangmus
    assert_response :success
  end

end
