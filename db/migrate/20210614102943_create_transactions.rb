class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :code
      t.string :type
      t.string :mode
      t.string :status
      t.text :content

      t.timestamps
    end
  end
end
