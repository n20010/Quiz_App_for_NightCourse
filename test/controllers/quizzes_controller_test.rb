require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_url
    assert_response :success
  end
  
  test "should get linux" do
    get quizzes_linux_path
    assert_response :success
  end
  
  test "should get index" do
    get quizzes_index_path
    assert_response :success
  end
  
  test "should get github" do
    get quizzes_github_path
    assert_response :success
  end
  
  test "shoud get linuxquiz" do
    get quizzes_linuxquiz_path
    assert_response :success
  end

end
