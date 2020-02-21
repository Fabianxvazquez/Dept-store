require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get items_index_url
    assert_response :success
  end

  test "should get new" do
    get items_new_url
    assert_response :success
  end

  test "should get shot" do
    get items_shot_url
    assert_response :success
  end

  test "should get edit--skip-routes" do
    get items_edit--skip-routes_url
    assert_response :success
  end

end
