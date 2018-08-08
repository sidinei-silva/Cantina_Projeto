require 'test_helper'

class CarrinhoControllerTest < ActionDispatch::IntegrationTest
  test "should get carrinho" do
    get carrinho_carrinho_url
    assert_response :success
  end

end
