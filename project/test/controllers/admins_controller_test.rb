require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = admins(:one)
  end

  test "should get index" do
    get admins_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_url
    assert_response :success
  end

  test "should create admin" do
    assert_difference('Admin.count') do
      post admins_url, params: { admin: { biography: @admin.biography, city: @admin.city, country: @admin.country, email: @admin.email, gps_location: @admin.gps_location, nickname: @admin.nickname, password: @admin.password, profile_image: @admin.profile_image, status: @admin.status, superadmin_id: @admin.superadmin_id } }
    end

    assert_redirected_to admin_url(Admin.last)
  end

  test "should show admin" do
    get admin_url(@admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_url(@admin)
    assert_response :success
  end

  test "should update admin" do
    patch admin_url(@admin), params: { admin: { biography: @admin.biography, city: @admin.city, country: @admin.country, email: @admin.email, gps_location: @admin.gps_location, nickname: @admin.nickname, password: @admin.password, profile_image: @admin.profile_image, status: @admin.status, superadmin_id: @admin.superadmin_id } }
    assert_redirected_to admin_url(@admin)
  end

  test "should destroy admin" do
    assert_difference('Admin.count', -1) do
      delete admin_url(@admin)
    end

    assert_redirected_to admins_url
  end
end
