class AddUserIdToTyrants < ActiveRecord::Migration[6.0]
  def change
    add_column :tyrants, :user_id, :integer
  end
end
