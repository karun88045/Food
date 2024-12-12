class RenameColumnUserToUserId < ActiveRecord::Migration[7.2]
  def change
    rename_column :messages, :user, :user_id 
  end
end
