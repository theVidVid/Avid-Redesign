class AddBlogPhotosToDesigners < ActiveRecord::Migration[5.2]
  def change
    add_column :designers, :pictures, :json
  end
end
