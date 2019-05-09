require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Admin", with: @post.admin_id
    fill_in "Creation date", with: @post.creation_date
    fill_in "File", with: @post.file
    fill_in "Image", with: @post.image
    fill_in "Link", with: @post.link
    fill_in "Solve status", with: @post.solve_status
    fill_in "Super admin", with: @post.super_admin_id
    fill_in "Text", with: @post.text
    fill_in "Title", with: @post.title
    fill_in "User", with: @post.user_id
    fill_in "Wall", with: @post.wall_id
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @post.admin_id
    fill_in "Creation date", with: @post.creation_date
    fill_in "File", with: @post.file
    fill_in "Image", with: @post.image
    fill_in "Link", with: @post.link
    fill_in "Solve status", with: @post.solve_status
    fill_in "Super admin", with: @post.super_admin_id
    fill_in "Text", with: @post.text
    fill_in "Title", with: @post.title
    fill_in "User", with: @post.user_id
    fill_in "Wall", with: @post.wall_id
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
