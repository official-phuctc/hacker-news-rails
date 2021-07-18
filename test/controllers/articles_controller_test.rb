require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get articles" do
    get articles_path
    p response
    assert_response :success
  end
end