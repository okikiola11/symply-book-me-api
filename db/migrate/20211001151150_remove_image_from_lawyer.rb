class RemoveImageFromLawyer < ActiveRecord::Migration[6.0]
  def change
    remove_column :lawyers, :image, :string
    add_column :lawyers, :image_data, :text
  end
end
