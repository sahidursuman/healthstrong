require 'test_helper'

class FrontsControllerTest < ActionDispatch::IntegrationTest
  test "should get Hospital" do
    get fronts_Hospital_url
    assert_response :success
  end

  test "should get Community" do
    get fronts_Community_url
    assert_response :success
  end

end
