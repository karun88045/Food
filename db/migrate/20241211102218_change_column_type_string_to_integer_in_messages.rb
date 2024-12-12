class ChangeColumnTypeStringToIntegerInMessages < ActiveRecord::Migration[7.2]
  def up
    change_column :messages, :user_id, :integer
  end
  
  def down
    change_column :messages, :user_id, :string
  end
end
