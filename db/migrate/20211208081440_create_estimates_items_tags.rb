class CreateEstimatesItemsTags < ActiveRecord::Migration[6.0]
  def change
    create_table :estimates_items_tags do |t|
      t.references :estimate null: false, foreign_key: true
      t.references :est_item null: false, foreign_key: true
      t.timestamps
    end
  end
end
