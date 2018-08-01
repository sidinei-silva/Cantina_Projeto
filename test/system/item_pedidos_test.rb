require "application_system_test_case"

class ItemPedidosTest < ApplicationSystemTestCase
  setup do
    @item_pedido = item_pedidos(:one)
  end

  test "visiting the index" do
    visit item_pedidos_url
    assert_selector "h1", text: "Item Pedidos"
  end

  test "creating a Item pedido" do
    visit item_pedidos_url
    click_on "New Item Pedido"

    fill_in "Precoitem", with: @item_pedido.precoItem
    fill_in "Quantidadeitem", with: @item_pedido.quantidadeItem
    fill_in "Statusitem", with: @item_pedido.statusItem
    click_on "Create Item pedido"

    assert_text "Item pedido was successfully created"
    click_on "Back"
  end

  test "updating a Item pedido" do
    visit item_pedidos_url
    click_on "Edit", match: :first

    fill_in "Precoitem", with: @item_pedido.precoItem
    fill_in "Quantidadeitem", with: @item_pedido.quantidadeItem
    fill_in "Statusitem", with: @item_pedido.statusItem
    click_on "Update Item pedido"

    assert_text "Item pedido was successfully updated"
    click_on "Back"
  end

  test "destroying a Item pedido" do
    visit item_pedidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item pedido was successfully destroyed"
  end
end
