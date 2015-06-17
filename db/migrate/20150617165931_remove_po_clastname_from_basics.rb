class RemovePoClastnameFromBasics < ActiveRecord::Migration
  def change
    remove_column :basics, :POClastname, :string
  end
end
