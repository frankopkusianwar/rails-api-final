class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :sessionId
      t.string :token
      t.string :status
      t.decimal :subTotal
      t.decimal :itemDiscount
      t.decimal :tax
      t.decimal :shipping
      t.decimal :total
      t.string :promo
      t.decimal :discount
      t.decimal :grandTotal
      t.string :adress
      t.text :content

      t.timestamps
    end
  end
end
