class RemovePoCfirstnameFromBasics < ActiveRecord::Migration
  def change
    remove_column :basics, :POCfirstname, :string
  end
end
