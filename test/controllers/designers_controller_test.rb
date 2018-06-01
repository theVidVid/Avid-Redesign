require 'test_helper'

class DesignersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @designer = designers(:one)
  end

  test "should get index" do
    get designers_url
    assert_response :success
  end

  test "should get new" do
    get new_designer_url
    assert_response :success
  end

  test "should create designer" do
    assert_difference('Designer.count') do
      post designers_url, params: { designer: { company_name: @designer.company_name, company_website: @designer.company_website, design_image: @designer.design_image, email: @designer.email, first_name: @designer.first_name, last_name: @designer.last_name, location: @designer.location, phone_number: @designer.phone_number, profile_pic: @designer.profile_pic, user_id: @designer.user_id } }
    end

    assert_redirected_to designer_url(Designer.last)
  end

  test "should show designer" do
    get designer_url(@designer)
    assert_response :success
  end

  test "should get edit" do
    get edit_designer_url(@designer)
    assert_response :success
  end

  test "should update designer" do
    patch designer_url(@designer), params: { designer: { company_name: @designer.company_name, company_website: @designer.company_website, design_image: @designer.design_image, email: @designer.email, first_name: @designer.first_name, last_name: @designer.last_name, location: @designer.location, phone_number: @designer.phone_number, profile_pic: @designer.profile_pic, user_id: @designer.user_id } }
    assert_redirected_to designer_url(@designer)
  end

  test "should destroy designer" do
    assert_difference('Designer.count', -1) do
      delete designer_url(@designer)
    end

    assert_redirected_to designers_url
  end
end
