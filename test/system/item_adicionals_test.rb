require "application_system_test_case"

class ItemAdicionalsTest < ApplicationSystemTestCase
  setup do
    @item_adicional = item_adicionals(:one)
  end

  test "visiting the index" do
    visit item_adicionals_url
    assert_selector "h1", text: "Item Adicionals"
  end

  test "creating a Item adicional" do
    visit item_adicionals_url
    click_on "New Item Adicional"

    click_on "Create Item adicional"

    assert_text "Item adicional was successfully created"
    click_on "Back"
  end

  test "updating a Item adicional" do
    visit item_adicionals_url
    click_on "Edit", match: :first

    click_on "Update Item adicional"

    assert_text "Item adicional was successfully updated"
    click_on "Back"
  end

  test "destroying a Item adicional" do
    visit item_adicionals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item adicional was successfully destroyed"
  end
end
