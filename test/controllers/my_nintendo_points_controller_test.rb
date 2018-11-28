require 'test_helper'

class MyNintendoPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_nintendo_point = my_nintendo_points(:one)
  end

  test "should get index" do
    get my_nintendo_points_url
    assert_response :success
  end

  test "should get new" do
    get new_my_nintendo_point_url
    assert_response :success
  end

  test "should create my_nintendo_point" do
    assert_difference('MyNintendoPoint.count') do
      post my_nintendo_points_url, params: { my_nintendo_point: { country: @my_nintendo_point.country, gpoints: @my_nintendo_point.gpoints, spoints: @my_nintendo_point.spoints, username: @my_nintendo_point.username } }
    end

    assert_redirected_to my_nintendo_point_url(MyNintendoPoint.last)
  end

  test "should show my_nintendo_point" do
    get my_nintendo_point_url(@my_nintendo_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_nintendo_point_url(@my_nintendo_point)
    assert_response :success
  end

  test "should update my_nintendo_point" do
    patch my_nintendo_point_url(@my_nintendo_point), params: { my_nintendo_point: { country: @my_nintendo_point.country, gpoints: @my_nintendo_point.gpoints, spoints: @my_nintendo_point.spoints, username: @my_nintendo_point.username } }
    assert_redirected_to my_nintendo_point_url(@my_nintendo_point)
  end

  test "should destroy my_nintendo_point" do
    assert_difference('MyNintendoPoint.count', -1) do
      delete my_nintendo_point_url(@my_nintendo_point)
    end

    assert_redirected_to my_nintendo_points_url
  end
end
