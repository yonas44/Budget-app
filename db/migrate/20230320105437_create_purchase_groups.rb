class CreatePurchaseGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_groups do |t|
      t.references :purchase, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
