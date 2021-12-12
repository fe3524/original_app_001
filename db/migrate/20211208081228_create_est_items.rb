class CreateEstItems < ActiveRecord::Migration[6.0]
  def change
    create_table :est_items do |t|
      t.string :item_name, null: false
      t.integer :unit_price, null: false
      t.text :memo
      t.timestamps
    end
  end
end