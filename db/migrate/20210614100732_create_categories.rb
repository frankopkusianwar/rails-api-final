class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :metaTitle
      t.string :slug
      t.text :content
      t.integer :parent_id

      t.timestamps
    end
  end
end
