class AddPoClastnameToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :POClastname, :string
  end
end
