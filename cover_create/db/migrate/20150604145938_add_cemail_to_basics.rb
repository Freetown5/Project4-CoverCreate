class AddCemailToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :cemail, :string
  end
end
