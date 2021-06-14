class CreateProductReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :product_reviews do |t|
      t.string :title
      t.int :rating
      t.boolean :published
      t.text :content
      t.integer :parent_id

      t.timestamps
    end
    add_reference :product_reviews, :product, index: true
  end
end
