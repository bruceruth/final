class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.decimal :pricePerPerson
      t.integer :discount
      t.references :appointment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
