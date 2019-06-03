require 'test_helper'

class CampgroundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campground = campgrounds(:one)
  end

  test "should get index" do
    get campgrounds_url
    assert_response :success
  end

  test "should get new" do
    get new_campground_url
    assert_response :success
  end

  test "should create campground" do
    assert_difference('Campground.count') do
      post campgrounds_url, params: { campground: { address: @campground.address, contact_info: @campground.contact_info, dates_open: @campground.dates_open, description: @campground.description, directions: @campground.directions, electric: @campground.electric, latitude: @campground.latitude, longitude: @campground.longitude, name: @campground.name, total_sites: @campground.total_sites } }
    end

    assert_redirected_to campground_url(Campground.last)
  end

  test "should show campground" do
    get campground_url(@campground)
    assert_response :success
  end

  test "should get edit" do
    get edit_campground_url(@campground)
    assert_response :success
  end

  test "should update campground" do
    patch campground_url(@campground), params: { campground: { address: @campground.address, contact_info: @campground.contact_info, dates_open: @campground.dates_open, description: @campground.description, directions: @campground.directions, electric: @campground.electric, latitude: @campground.latitude, longitude: @campground.longitude, name: @campground.name, total_sites: @campground.total_sites } }
    assert_redirected_to campground_url(@campground)
  end

  test "should destroy campground" do
    assert_difference('Campground.count', -1) do
      delete campground_url(@campground)
    end

    assert_redirected_to campgrounds_url
  end
end
