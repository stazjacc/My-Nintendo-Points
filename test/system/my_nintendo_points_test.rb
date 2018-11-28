require "application_system_test_case"

class MyNintendoPointsTest < ApplicationSystemTestCase
  setup do
    @my_nintendo_point = my_nintendo_points(:one)
  end

  test "visiting the index" do
    visit my_nintendo_points_url
    assert_selector "h1", text: "My Nintendo Points"
  end

  test "creating a My nintendo point" do
    visit my_nintendo_points_url
    click_on "New My Nintendo Point"

    fill_in "Country", with: @my_nintendo_point.country
    fill_in "Gpoints", with: @my_nintendo_point.gpoints
    fill_in "Spoints", with: @my_nintendo_point.spoints
    fill_in "Username", with: @my_nintendo_point.username
    click_on "Create My nintendo point"

    assert_text "My nintendo point was successfully created"
    click_on "Back"
  end

  test "updating a My nintendo point" do
    visit my_nintendo_points_url
    click_on "Edit", match: :first

    fill_in "Country", with: @my_nintendo_point.country
    fill_in "Gpoints", with: @my_nintendo_point.gpoints
    fill_in "Spoints", with: @my_nintendo_point.spoints
    fill_in "Username", with: @my_nintendo_point.username
    click_on "Update My nintendo point"

    assert_text "My nintendo point was successfully updated"
    click_on "Back"
  end

  test "destroying a My nintendo point" do
    visit my_nintendo_points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My nintendo point was successfully destroyed"
  end
end
