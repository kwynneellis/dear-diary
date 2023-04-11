require "test_helper"

class DailyLogsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get daily_logs_new_url
    assert_response :success
  end
end
