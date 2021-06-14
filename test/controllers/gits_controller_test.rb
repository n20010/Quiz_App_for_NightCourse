require 'test_helper'

class GitsControllerTest < ActionDispatch::IntegrationTest
  test "should get done" do
    get gits_done_url
    assert_response :success
  end

  test "should get lose" do
    get gits_lose_url
    assert_response :success
  end

  test "should get question" do
    get gits_question_url
    assert_response :success
  end

  test "should get win" do
    get gits_win_url
    assert_response :success
  end

end
