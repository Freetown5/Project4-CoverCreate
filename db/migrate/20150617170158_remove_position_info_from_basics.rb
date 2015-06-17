class RemovePositionInfoFromBasics < ActiveRecord::Migration
  def change
    remove_column :basics, :position_info, :text
  end
end
