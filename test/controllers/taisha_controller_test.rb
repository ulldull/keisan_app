require 'test_helper'

class TaishaControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get taisha_top_url
    assert_response :success
  end

end
