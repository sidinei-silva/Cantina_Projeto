require 'test_helper'

class ItemPedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_pedido = item_pedidos(:one)
  end

  test "should get index" do
    get item_pedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_item_pedido_url
    assert_response :success
  end

  test "should create item_pedido" do
    assert_difference('ItemPedido.count') do
      post item_pedidos_url, params: { item_pedido: { precoItem: @item_pedido.precoItem, quantidadeItem: @item_pedido.quantidadeItem, statusItem: @item_pedido.statusItem } }
    end

    assert_redirected_to item_pedido_url(ItemPedido.last)
  end

  test "should show item_pedido" do
    get item_pedido_url(@item_pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_pedido_url(@item_pedido)
    assert_response :success
  end

  test "should update item_pedido" do
    patch item_pedido_url(@item_pedido), params: { item_pedido: { precoItem: @item_pedido.precoItem, quantidadeItem: @item_pedido.quantidadeItem, statusItem: @item_pedido.statusItem } }
    assert_redirected_to item_pedido_url(@item_pedido)
  end

  test "should destroy item_pedido" do
    assert_difference('ItemPedido.count', -1) do
      delete item_pedido_url(@item_pedido)
    end

    assert_redirected_to item_pedidos_url
  end
end
