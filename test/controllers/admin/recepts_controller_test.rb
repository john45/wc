require 'test_helper'

class Admin::ReceptsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_recepts_index_url
    assert_response :success
  end

  test "should get create" do
    get admin_recepts_create_url
    assert_response :success
  end

  test "should get new" do
    get admin_recepts_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_recepts_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_recepts_destroy_url
    assert_response :success
  end

end
