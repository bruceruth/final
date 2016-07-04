class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :numpeople
      t.date :date
      t.string :timeslot
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
