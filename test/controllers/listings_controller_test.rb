require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listings_index_url
    assert_response :success
  end

  test "should get buy" do
    get listings_buy_url
    assert_response :success
  end

  test "should get sell" do
    get listings_sell_url
    assert_response :success
  end

  test "should get swap" do
    get listings_swap_url
    assert_response :success
  end

  test "should get free" do
    get listings_free_url
    assert_response :success
  end

end
