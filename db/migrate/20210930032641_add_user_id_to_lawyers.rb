class AddUserIdToLawyers < ActiveRecord::Migration[6.0]
  def change
    add_column :lawyers, :user_id, :int
  end
end
