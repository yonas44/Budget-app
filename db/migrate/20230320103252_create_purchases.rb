class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :name
      t.float :amount
      t.string :reciever
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
