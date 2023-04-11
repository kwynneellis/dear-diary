require "test_helper"

class MoodLogsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mood_logs_new_url
    assert_response :success
  end
end
