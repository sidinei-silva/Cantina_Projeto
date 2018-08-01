json.extract! pedido, :id, :dataPedido, :statusPedido, :precoPedido, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
