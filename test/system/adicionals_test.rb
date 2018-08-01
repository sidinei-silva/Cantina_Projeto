require "application_system_test_case"

class AdicionalsTest < ApplicationSystemTestCase
  setup do
    @adicional = adicionals(:one)
  end

  test "visiting the index" do
    visit adicionals_url
    assert_selector "h1", text: "Adicionals"
  end

  test "creating a Adicional" do
    visit adicionals_url
    click_on "New Adicional"

    fill_in "Descricaoadicional", with: @adicional.descricaoAdicional
    fill_in "Statusadicional", with: @adicional.statusAdicional
    fill_in "Valoradicional", with: @adicional.valorAdicional
    click_on "Create Adicional"

    assert_text "Adicional was successfully created"
    click_on "Back"
  end

  test "updating a Adicional" do
    visit adicionals_url
    click_on "Edit", match: :first

    fill_in "Descricaoadicional", with: @adicional.descricaoAdicional
    fill_in "Statusadicional", with: @adicional.statusAdicional
    fill_in "Valoradicional", with: @adicional.valorAdicional
    click_on "Update Adicional"

    assert_text "Adicional was successfully updated"
    click_on "Back"
  end

  test "destroying a Adicional" do
    visit adicionals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adicional was successfully destroyed"
  end
end
