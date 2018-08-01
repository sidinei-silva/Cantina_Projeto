require "application_system_test_case"

class ProdutosTest < ApplicationSystemTestCase
  setup do
    @produto = produtos(:one)
  end

  test "visiting the index" do
    visit produtos_url
    assert_selector "h1", text: "Produtos"
  end

  test "creating a Produto" do
    visit produtos_url
    click_on "New Produto"

    fill_in "Descricaoproduto", with: @produto.descricaoProduto
    fill_in "Imagemproduto", with: @produto.imagemProduto
    fill_in "Precoproduto", with: @produto.precoProduto
    fill_in "Statusproduto", with: @produto.statusProduto
    click_on "Create Produto"

    assert_text "Produto was successfully created"
    click_on "Back"
  end

  test "updating a Produto" do
    visit produtos_url
    click_on "Edit", match: :first

    fill_in "Descricaoproduto", with: @produto.descricaoProduto
    fill_in "Imagemproduto", with: @produto.imagemProduto
    fill_in "Precoproduto", with: @produto.precoProduto
    fill_in "Statusproduto", with: @produto.statusProduto
    click_on "Update Produto"

    assert_text "Produto was successfully updated"
    click_on "Back"
  end

  test "destroying a Produto" do
    visit produtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Produto was successfully destroyed"
  end
end
