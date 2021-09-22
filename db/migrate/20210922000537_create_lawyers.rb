class CreateLawyers < ActiveRecord::Migration[6.0]
  def change
    create_table :lawyers do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :type

      t.timestamps
    end
  end
end
