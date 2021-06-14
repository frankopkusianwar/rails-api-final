class CreateProductReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :product_reviews do |t|
      t.string :title
      t.int :rating
      t.boolean :published
      t.text :content

      t.timestamps
    end
  end
end
