class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.string :sku
      t.decimal :price
      t.decimal :discount
      t.int :quantity
      t.boolean :active
      t.text :content

      t.timestamps
    end
    add_reference :cart_items, :product, index: true
    add_reference :cart_items, :cart, index: true
  end
end
