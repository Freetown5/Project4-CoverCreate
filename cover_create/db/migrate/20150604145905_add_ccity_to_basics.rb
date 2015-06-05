class AddCcityToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :ccity, :text
  end
end
