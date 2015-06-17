class CreateOpenApplies < ActiveRecord::Migration
  def change
    create_table :open_applies do |t|
      t.string :date
      t.string :poc_first_name
      t.string :poc_last_name
      t.string :ytitle
      t.string :desired_position
      t.string :industry_type
      t.string :position_found
      t.string :open_position
      t.text :position_info
      t.text :relevant_skills

      t.timestamps null: false
    end
  end
end
