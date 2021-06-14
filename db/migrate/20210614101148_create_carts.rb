class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.string :sessionId
      t.string :token
      t.string :status
      t.string :address
      t.text :content

      t.timestamps
    end
  end
end
