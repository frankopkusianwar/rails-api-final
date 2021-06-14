class CreateProductCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :product_categories do |t|

      t.timestamps
    end
    add_reference :product_categories, :category, index: true
    add_reference :product_categories, :product, index: true
  end
end
