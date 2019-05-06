require "application_system_test_case"

class AdminsTest < ApplicationSystemTestCase
  setup do
    @admin = admins(:one)
  end

  test "visiting the index" do
    visit admins_url
    assert_selector "h1", text: "Admins"
  end

  test "creating a Admin" do
    visit admins_url
    click_on "New Admin"

    fill_in "Biography", with: @admin.biography
    fill_in "City", with: @admin.city
    fill_in "Country", with: @admin.country
    fill_in "Email", with: @admin.email
    fill_in "Gps location", with: @admin.gps_location
    fill_in "Nickname", with: @admin.nickname
    fill_in "Password", with: @admin.password
    fill_in "Profile image", with: @admin.profile_image
    fill_in "Status", with: @admin.status
    fill_in "Superadmin", with: @admin.superadmin_id
    click_on "Create Admin"

    assert_text "Admin was successfully created"
    click_on "Back"
  end

  test "updating a Admin" do
    visit admins_url
    click_on "Edit", match: :first

    fill_in "Biography", with: @admin.biography
    fill_in "City", with: @admin.city
    fill_in "Country", with: @admin.country
    fill_in "Email", with: @admin.email
    fill_in "Gps location", with: @admin.gps_location
    fill_in "Nickname", with: @admin.nickname
    fill_in "Password", with: @admin.password
    fill_in "Profile image", with: @admin.profile_image
    fill_in "Status", with: @admin.status
    fill_in "Superadmin", with: @admin.superadmin_id
    click_on "Update Admin"

    assert_text "Admin was successfully updated"
    click_on "Back"
  end

  test "destroying a Admin" do
    visit admins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admin was successfully destroyed"
  end
end
