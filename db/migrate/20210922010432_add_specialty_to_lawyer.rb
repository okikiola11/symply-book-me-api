class AddSpecialtyToLawyer < ActiveRecord::Migration[6.0]
  def change
    add_column :lawyers, :specialty, :string
  end
end
