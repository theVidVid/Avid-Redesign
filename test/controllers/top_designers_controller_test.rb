require 'test_helper'

class TopDesignersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get top_designers_show_url
    assert_response :success
  end

  test "should get new" do
    get top_designers_new_url
    assert_response :success
  end

  test "should get edit" do
    get top_designers_edit_url
    assert_response :success
  end

end
