require "test_helper"

class LogsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get logs_new_url
    assert_response :success
  end
end
