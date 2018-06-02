require 'test_helper'

class DesignProfessionalsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get design_professionals_show_url
    assert_response :success
  end

  test "should get new" do
    get design_professionals_new_url
    assert_response :success
  end

  test "should get edit" do
    get design_professionals_edit_url
    assert_response :success
  end

end
