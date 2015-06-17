class RemoveDateFromBasics < ActiveRecord::Migration
  def change
    remove_column :basics, :date, :string
  end
end
