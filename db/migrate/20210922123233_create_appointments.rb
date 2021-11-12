class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :lawyer, null: false, foreign_key: true
      t.string :lawyer_name
      t.string :location
      t.datetime :appointed_date

      t.timestamps
    end
  end
end
