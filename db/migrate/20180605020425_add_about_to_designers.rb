class AddAboutToDesigners < ActiveRecord::Migration[5.2]
  def change
    add_column :designers, :about, :string
  end
end
