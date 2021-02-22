require "test_helper"

class Friends1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friends1 = friends1s(:one)
  end

  test "should get index" do
    get friends1s_url
    assert_response :success
  end

  test "should get new" do
    get new_friends1_url
    assert_response :success
  end

  test "should create friends1" do
    assert_difference('Friends1.count') do
      post friends1s_url, params: { friends1: { email: @friends1.email, first_name: @friends1.first_name, instagram: @friends1.instagram, last_name: @friends1.last_name, phone: @friends1.phone } }
    end

    assert_redirected_to friends1_url(Friends1.last)
  end

  test "should show friends1" do
    get friends1_url(@friends1)
    assert_response :success
  end

  test "should get edit" do
    get edit_friends1_url(@friends1)
    assert_response :success
  end

  test "should update friends1" do
    patch friends1_url(@friends1), params: { friends1: { email: @friends1.email, first_name: @friends1.first_name, instagram: @friends1.instagram, last_name: @friends1.last_name, phone: @friends1.phone } }
    assert_redirected_to friends1_url(@friends1)
  end

  test "should destroy friends1" do
    assert_difference('Friends1.count', -1) do
      delete friends1_url(@friends1)
    end

    assert_redirected_to friends1s_url
  end
end
