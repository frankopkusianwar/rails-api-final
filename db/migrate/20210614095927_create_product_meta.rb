class CreateProductMeta < ActiveRecord::Migration[6.1]
  def change
    create_table :product_metas do |t|
      t.string :key
      t.text :content

      t.timestamps
    end
    add_reference :product_metas, :product, index: true
  end
end
