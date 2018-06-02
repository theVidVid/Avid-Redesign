class AddDesignerIdToDesigners < ActiveRecord::Migration[5.2]
  def change
    add_column :designers, :designer_id, :integer
  end
end
