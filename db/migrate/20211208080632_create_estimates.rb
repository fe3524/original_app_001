class CreateEstimates < ActiveRecord::Migration[6.0]
  def change
    create_table :estimates do |t|
      t.string :est_number, null: false
      t.string :issue_date, null: false
      t.string :exp_date, null: false
      t.string :destination, null: false
      t.string :title, null: false
      t.string :delivery_date, null: false
      t.text :offer_conditions, null: false
      t.string :status_circular, null: false 
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
