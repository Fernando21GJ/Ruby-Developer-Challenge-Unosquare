require "application_system_test_case"

class RealEstatesTest < ApplicationSystemTestCase
  setup do
    @real_estate = real_estates(:one)
  end

  test "visiting the index" do
    visit real_estates_url
    assert_selector "h1", text: "Real Estates"
  end

  test "creating a Real estate" do
    visit real_estates_url
    click_on "New Real Estate"

    fill_in "Bathrooms", with: @real_estate.bathrooms
    fill_in "City", with: @real_estate.city
    fill_in "Comments", with: @real_estate.comments
    fill_in "Country", with: @real_estate.country
    fill_in "External number", with: @real_estate.external_number
    fill_in "Internal number", with: @real_estate.internal_number
    fill_in "Name", with: @real_estate.name
    fill_in "Neighborhood", with: @real_estate.neighborhood
    fill_in "Rooms", with: @real_estate.rooms
    fill_in "Street", with: @real_estate.street
    fill_in "String", with: @real_estate.string
    fill_in "Type", with: @real_estate.type
    click_on "Create Real estate"

    assert_text "Real estate was successfully created"
    click_on "Back"
  end

  test "updating a Real estate" do
    visit real_estates_url
    click_on "Edit", match: :first

    fill_in "Bathrooms", with: @real_estate.bathrooms
    fill_in "City", with: @real_estate.city
    fill_in "Comments", with: @real_estate.comments
    fill_in "Country", with: @real_estate.country
    fill_in "External number", with: @real_estate.external_number
    fill_in "Internal number", with: @real_estate.internal_number
    fill_in "Name", with: @real_estate.name
    fill_in "Neighborhood", with: @real_estate.neighborhood
    fill_in "Rooms", with: @real_estate.rooms
    fill_in "Street", with: @real_estate.street
    fill_in "String", with: @real_estate.string
    fill_in "Type", with: @real_estate.type
    click_on "Update Real estate"

    assert_text "Real estate was successfully updated"
    click_on "Back"
  end

  test "destroying a Real estate" do
    visit real_estates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Real estate was successfully destroyed"
  end
end
