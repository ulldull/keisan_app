require 'test_helper'

class BmiControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get bmi_top_url
    assert_response :success
  end

end
