require 'test_helper'

class LinuxControllerTest < ActionDispatch::IntegrationTest
  test "should get question" do
    get linux_question_url
    assert_response :success
  end

  test "should get win" do
    get linux_win_url
    assert_response :success
  end

  test "should get lose" do
    get linux_lose_url
    assert_response :success
  end

end
