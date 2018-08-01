json.extract! cliente, :id, :nomeCliente, :dataCliente, :statusCliente, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
