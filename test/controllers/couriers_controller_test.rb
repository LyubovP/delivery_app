require "test_helper"

class CouriersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get couriers_new_url
    assert_response :success
  end
end
