class AddCnameToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :cname, :string
  end
end
