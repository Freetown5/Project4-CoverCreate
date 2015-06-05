class AddCphoneToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :cphone, :string
  end
end
