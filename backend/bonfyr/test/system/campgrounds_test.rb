require "application_system_test_case"

class CampgroundsTest < ApplicationSystemTestCase
  setup do
    @campground = campgrounds(:one)
  end

  test "visiting the index" do
    visit campgrounds_url
    assert_selector "h1", text: "Campgrounds"
  end

  test "creating a Campground" do
    visit campgrounds_url
    click_on "New Campground"

    fill_in "Address", with: @campground.address
    fill_in "Contact info", with: @campground.contact_info
    fill_in "Dates open", with: @campground.dates_open
    fill_in "Description", with: @campground.description
    fill_in "Directions", with: @campground.directions
    check "Electric" if @campground.electric
    fill_in "Latitude", with: @campground.latitude
    fill_in "Longitude", with: @campground.longitude
    fill_in "Name", with: @campground.name
    fill_in "Total sites", with: @campground.total_sites
    click_on "Create Campground"

    assert_text "Campground was successfully created"
    click_on "Back"
  end

  test "updating a Campground" do
    visit campgrounds_url
    click_on "Edit", match: :first

    fill_in "Address", with: @campground.address
    fill_in "Contact info", with: @campground.contact_info
    fill_in "Dates open", with: @campground.dates_open
    fill_in "Description", with: @campground.description
    fill_in "Directions", with: @campground.directions
    check "Electric" if @campground.electric
    fill_in "Latitude", with: @campground.latitude
    fill_in "Longitude", with: @campground.longitude
    fill_in "Name", with: @campground.name
    fill_in "Total sites", with: @campground.total_sites
    click_on "Update Campground"

    assert_text "Campground was successfully updated"
    click_on "Back"
  end

  test "destroying a Campground" do
    visit campgrounds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Campground was successfully destroyed"
  end
end
