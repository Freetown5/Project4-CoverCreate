class AddSkillsToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :skills, :text
  end
end
