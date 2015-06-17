class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :date
      t.string :poc_first_name
      t.string :poc_last_name
      t.string :ytitle
      t.string :position_type
      t.string :industry_type
      t.text :specialty
      t.string :hard_skills
      t.string :relevant_skills
      t.text :culture

      t.timestamps null: false
    end
  end
end
