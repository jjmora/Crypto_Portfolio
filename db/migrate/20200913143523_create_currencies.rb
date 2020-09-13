class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.integer :rank
      t.string :name
      t.string :currency_symbol
      t.bigint :max_supply
      t.string :slug
      t.string :logo
      t.integer :id_CMC
      t.bigint :market_cap
      t.float :price
      t.float :portfolio_value
      t.float :portfolio_qty

      t.timestamps
    end
  end
end
