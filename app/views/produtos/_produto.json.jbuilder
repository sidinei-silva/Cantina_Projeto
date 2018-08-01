json.extract! produto, :id, :descricaoProduto, :precoProduto, :imagemProduto, :statusProduto, :created_at, :updated_at
json.url produto_url(produto, format: :json)
