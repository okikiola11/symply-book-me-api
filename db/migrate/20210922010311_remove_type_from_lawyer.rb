class RemoveTypeFromLawyer < ActiveRecord::Migration[6.0]
  def change
    remove_column :lawyers, :type, :string
  end
end
