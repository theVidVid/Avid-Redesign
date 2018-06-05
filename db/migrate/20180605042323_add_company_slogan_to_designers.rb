class AddCompanySloganToDesigners < ActiveRecord::Migration[5.2]
  def change
    add_column :designers, :company_slogan, :string
  end
end
