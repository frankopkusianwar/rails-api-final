class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :slug
      t.string :metaTitle
      t.text :summary
      t.int :type
      t.string :sku
      t.decimal :price
      t.decimal :discount
      t.int :quantity
      t.text :content

      t.timestamps
    end
    add_reference :products, :user, index: true
  end
end
