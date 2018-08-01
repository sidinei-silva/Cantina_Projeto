require "application_system_test_case"

class PedidosTest < ApplicationSystemTestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "visiting the index" do
    visit pedidos_url
    assert_selector "h1", text: "Pedidos"
  end

  test "creating a Pedido" do
    visit pedidos_url
    click_on "New Pedido"

    fill_in "Datapedido", with: @pedido.dataPedido
    fill_in "Precopedido", with: @pedido.precoPedido
    fill_in "Statuspedido", with: @pedido.statusPedido
    click_on "Create Pedido"

    assert_text "Pedido was successfully created"
    click_on "Back"
  end

  test "updating a Pedido" do
    visit pedidos_url
    click_on "Edit", match: :first

    fill_in "Datapedido", with: @pedido.dataPedido
    fill_in "Precopedido", with: @pedido.precoPedido
    fill_in "Statuspedido", with: @pedido.statusPedido
    click_on "Update Pedido"

    assert_text "Pedido was successfully updated"
    click_on "Back"
  end

  test "destroying a Pedido" do
    visit pedidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pedido was successfully destroyed"
  end
end
