class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :date
      t.string :POClastname
      t.string :POCfirstname
      t.string :POCtitle
      t.string :reference
      t.text :position_info
      t.text :skills

      t.timestamps null: false
    end
  end
end
