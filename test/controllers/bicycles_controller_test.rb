require 'test_helper'

class BicyclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bicycles_index_url
    assert_response :success
  end

  test "should get show" do
    get bicycles_show_url
    assert_response :success
  end

  test "should get new" do
    get bicycles_new_url
    assert_response :success
  end

  test "should get create" do
    get bicycles_create_url
    assert_response :success
  end

  test "should get update" do
    get bicycles_update_url
    assert_response :success
  end

  test "should get edit" do
    get bicycles_edit_url
    assert_response :success
  end

  test "should get delete" do
    get bicycles_delete_url
    assert_response :success
  end

end
