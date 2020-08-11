class CreateBrews < ActiveRecord::Migration[6.0]
  def change
    create_table :brews do |t|
      t.string :blend_name
      t.integer :strength
      t.string :origin
      t.text :notes

      t.timestamps
    end
  end
end
