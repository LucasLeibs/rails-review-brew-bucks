class CreateBrewCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :brew_customers do |t|
      t.references :brew, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
