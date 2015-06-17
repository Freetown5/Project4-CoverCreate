class RemovePoCtitleFromBasics < ActiveRecord::Migration
  def change
    remove_column :basics, :POCtitle, :string
  end
end
