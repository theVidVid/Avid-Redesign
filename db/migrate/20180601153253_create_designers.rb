class CreateDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :designers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :company_name
      t.string :company_website
      t.string :profile_pic
      t.string :design_image
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
