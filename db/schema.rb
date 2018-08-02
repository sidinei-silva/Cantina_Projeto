# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_31_191629) do

  create_table "adicionals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.float "valorAdicional"
    t.string "descricaoAdicional"
    t.boolean "statusAdicional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "produto_id"
    t.index ["produto_id"], name: "index_adicionals_on_produto_id"
  end

  create_table "clientes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nomeCliente"
    t.datetime "dataCliente"
    t.boolean "statusCliente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_adicionals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "adicional_id"
    t.bigint "item_adicional_id"
    t.index ["adicional_id"], name: "index_item_adicionals_on_adicional_id"
    t.index ["item_adicional_id"], name: "index_item_adicionals_on_item_adicional_id"
  end

  create_table "item_pedidos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "quantidadeItem"
    t.boolean "statusItem"
    t.float "precoItem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "produto_id"
    t.bigint "pedido_id"
    t.index ["pedido_id"], name: "index_item_pedidos_on_pedido_id"
    t.index ["produto_id"], name: "index_item_pedidos_on_produto_id"
  end

  create_table "pedidos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "dataPedido"
    t.string "statusPedido"
    t.float "precoPedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cliente_id"
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
  end

  create_table "produtos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descricaoProduto"
    t.string "precoProduto"
    t.string "imagemProduto"
    t.boolean "statusProduto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "adicionals", "produtos"
  add_foreign_key "item_adicionals", "adicionals"
  add_foreign_key "item_adicionals", "item_adicionals"
  add_foreign_key "item_pedidos", "pedidos"
  add_foreign_key "item_pedidos", "produtos"
  add_foreign_key "pedidos", "clientes"
end
