require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { admin_id: @user.admin_id, biography: @user.biography, city: @user.city, country: @user.country, email: @user.email, gps_location: @user.gps_location, nickname: @user.nickname, password: @user.password, profile_image: @user.profile_image, status: @user.status, super_admin_id: @user.super_admin_id } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { admin_id: @user.admin_id, biography: @user.biography, city: @user.city, country: @user.country, email: @user.email, gps_location: @user.gps_location, nickname: @user.nickname, password: @user.password, profile_image: @user.profile_image, status: @user.status, super_admin_id: @user.super_admin_id } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
