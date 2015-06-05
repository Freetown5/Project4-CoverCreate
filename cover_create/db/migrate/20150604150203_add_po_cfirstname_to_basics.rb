class AddPoCfirstnameToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :POCfirstname, :string
  end
end
