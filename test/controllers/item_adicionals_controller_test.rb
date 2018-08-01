require 'test_helper'

class ItemAdicionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_adicional = item_adicionals(:one)
  end

  test "should get index" do
    get item_adicionals_url
    assert_response :success
  end

  test "should get new" do
    get new_item_adicional_url
    assert_response :success
  end

  test "should create item_adicional" do
    assert_difference('ItemAdicional.count') do
      post item_adicionals_url, params: { item_adicional: {  } }
    end

    assert_redirected_to item_adicional_url(ItemAdicional.last)
  end

  test "should show item_adicional" do
    get item_adicional_url(@item_adicional)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_adicional_url(@item_adicional)
    assert_response :success
  end

  test "should update item_adicional" do
    patch item_adicional_url(@item_adicional), params: { item_adicional: {  } }
    assert_redirected_to item_adicional_url(@item_adicional)
  end

  test "should destroy item_adicional" do
    assert_difference('ItemAdicional.count', -1) do
      delete item_adicional_url(@item_adicional)
    end

    assert_redirected_to item_adicionals_url
  end
end
