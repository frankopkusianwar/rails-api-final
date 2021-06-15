class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.string :sku
      t.decimal :price
      t.decimal :discount
      t.int :quantity
      t.text :content

      t.timestamps
    end
    add_reference :order_items, :product, index: true
  end
end
