class RemoveSkillsFromBasics < ActiveRecord::Migration
  def change
    remove_column :basics, :skills, :text
  end
end
