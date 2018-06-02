class RemoveUserIdFromDesigners < ActiveRecord::Migration[5.2]
  def change
    remove_column :designers, :user_id, :integer
  end
end
