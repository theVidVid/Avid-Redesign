require "application_system_test_case"

class DesignersTest < ApplicationSystemTestCase
  setup do
    @designer = designers(:one)
  end

  test "visiting the index" do
    visit designers_url
    assert_selector "h1", text: "Designers"
  end

  test "creating a Designer" do
    visit designers_url
    click_on "New Designer"

    fill_in "Company Name", with: @designer.company_name
    fill_in "Company Website", with: @designer.company_website
    fill_in "Design Image", with: @designer.design_image
    fill_in "Email", with: @designer.email
    fill_in "First Name", with: @designer.first_name
    fill_in "Last Name", with: @designer.last_name
    fill_in "Location", with: @designer.location
    fill_in "Phone Number", with: @designer.phone_number
    fill_in "Profile Pic", with: @designer.profile_pic
    fill_in "User", with: @designer.user_id
    click_on "Create Designer"

    assert_text "Designer was successfully created"
    click_on "Back"
  end

  test "updating a Designer" do
    visit designers_url
    click_on "Edit", match: :first

    fill_in "Company Name", with: @designer.company_name
    fill_in "Company Website", with: @designer.company_website
    fill_in "Design Image", with: @designer.design_image
    fill_in "Email", with: @designer.email
    fill_in "First Name", with: @designer.first_name
    fill_in "Last Name", with: @designer.last_name
    fill_in "Location", with: @designer.location
    fill_in "Phone Number", with: @designer.phone_number
    fill_in "Profile Pic", with: @designer.profile_pic
    fill_in "User", with: @designer.user_id
    click_on "Update Designer"

    assert_text "Designer was successfully updated"
    click_on "Back"
  end

  test "destroying a Designer" do
    visit designers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Designer was successfully destroyed"
  end
end
