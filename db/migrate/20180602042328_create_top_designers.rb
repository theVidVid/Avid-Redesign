class CreateTopDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :top_designers do |t|
      t.integer :client_id
      t.integer :designer_id

      t.timestamps
    end
  end
end
