class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.string :date
      t.string :poc_first_name
      t.string :poc_last_name
      t.string :poc_title
      t.string :reference
      t.text :position_info
      t.text :skills

      t.timestamps null: false
    end
  end
end
