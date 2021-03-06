require 'test_helper'

class SuperAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @super_admin = super_admins(:one)
  end

  test "should get index" do
    get super_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_super_admin_url
    assert_response :success
  end

  test "should create super_admin" do
    assert_difference('SuperAdmin.count') do
      post super_admins_url, params: { super_admin: { biography: @super_admin.biography, city: @super_admin.city, country: @super_admin.country, email: @super_admin.email, gps_location: @super_admin.gps_location, nickname: @super_admin.nickname, password: @super_admin.password, profile_image: @super_admin.profile_image, status: @super_admin.status } }
    end

    assert_redirected_to super_admin_url(SuperAdmin.last)
  end

  test "should show super_admin" do
    get super_admin_url(@super_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_super_admin_url(@super_admin)
    assert_response :success
  end

  test "should update super_admin" do
    patch super_admin_url(@super_admin), params: { super_admin: { biography: @super_admin.biography, city: @super_admin.city, country: @super_admin.country, email: @super_admin.email, gps_location: @super_admin.gps_location, nickname: @super_admin.nickname, password: @super_admin.password, profile_image: @super_admin.profile_image, status: @super_admin.status } }
    assert_redirected_to super_admin_url(@super_admin)
  end

  test "should destroy super_admin" do
    assert_difference('SuperAdmin.count', -1) do
      delete super_admin_url(@super_admin)
    end

    assert_redirected_to super_admins_url
  end
end
