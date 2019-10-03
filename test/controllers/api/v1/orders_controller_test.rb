require 'test_helper'

class Api::V1::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_orders_show_url
    assert_response :success
  end

  test "should get new" do
    get api_v1_orders_new_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_orders_update_url
    assert_response :success
  end

  test "should get delete" do
    get api_v1_orders_delete_url
    assert_response :success
  end

end
