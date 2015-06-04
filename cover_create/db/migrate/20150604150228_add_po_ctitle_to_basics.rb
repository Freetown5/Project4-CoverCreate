class AddPoCtitleToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :POCtitle, :string
  end
end
