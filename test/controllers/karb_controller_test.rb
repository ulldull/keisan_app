require 'test_helper'

class KarbControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get karb_top_url
    assert_response :success
  end

end
