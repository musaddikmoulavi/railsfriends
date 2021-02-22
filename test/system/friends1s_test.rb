require "application_system_test_case"

class Friends1sTest < ApplicationSystemTestCase
  setup do
    @friends1 = friends1s(:one)
  end

  test "visiting the index" do
    visit friends1s_url
    assert_selector "h1", text: "Friends1s"
  end

  test "creating a Friends1" do
    visit friends1s_url
    click_on "New Friends1"

    fill_in "Email", with: @friends1.email
    fill_in "First name", with: @friends1.first_name
    fill_in "Instagram", with: @friends1.instagram
    fill_in "Last name", with: @friends1.last_name
    fill_in "Phone", with: @friends1.phone
    click_on "Create Friends1"

    assert_text "Friends1 was successfully created"
    click_on "Back"
  end

  test "updating a Friends1" do
    visit friends1s_url
    click_on "Edit", match: :first

    fill_in "Email", with: @friends1.email
    fill_in "First name", with: @friends1.first_name
    fill_in "Instagram", with: @friends1.instagram
    fill_in "Last name", with: @friends1.last_name
    fill_in "Phone", with: @friends1.phone
    click_on "Update Friends1"

    assert_text "Friends1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Friends1" do
    visit friends1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friends1 was successfully destroyed"
  end
end
