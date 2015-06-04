class AddPositionInfoToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :position_info, :text
  end
end
