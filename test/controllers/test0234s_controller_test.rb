require "test_helper"

class Test0234sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test0234 = test0234s(:one)
  end

  test "should get index" do
    get test0234s_url
    assert_response :success
  end

  test "should get new" do
    get new_test0234_url
    assert_response :success
  end

  test "should create test0234" do
    assert_difference("Test0234.count") do
      post test0234s_url, params: { test0234: {} }
    end

    assert_redirected_to test0234_url(Test0234.last)
  end

  test "should show test0234" do
    get test0234_url(@test0234)
    assert_response :success
  end

  test "should get edit" do
    get edit_test0234_url(@test0234)
    assert_response :success
  end

  test "should update test0234" do
    patch test0234_url(@test0234), params: { test0234: {} }
    assert_redirected_to test0234_url(@test0234)
  end

  test "should destroy test0234" do
    assert_difference("Test0234.count", -1) do
      delete test0234_url(@test0234)
    end

    assert_redirected_to test0234s_url
  end
end
