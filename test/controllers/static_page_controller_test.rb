require "test_helper"

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  test "should get landing_page" do
    get static_page_landing_page_url
    assert_response :success
  end

  test "should get policy" do
    get static_page_policy_url
    assert_response :success
  end
end
