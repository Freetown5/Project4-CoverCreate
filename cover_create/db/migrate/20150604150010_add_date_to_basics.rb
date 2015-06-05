class AddDateToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :date, :string
  end
end
