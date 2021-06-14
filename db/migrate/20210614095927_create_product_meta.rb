class CreateProductMeta < ActiveRecord::Migration[6.1]
  def change
    create_table :product_meta do |t|
      t.string :key
      t.text :content

      t.timestamps
    end
  end
end
