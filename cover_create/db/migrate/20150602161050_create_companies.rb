class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :cname
      t.text :ccity
      t.string :cphone
      t.string :cemail

      t.timestamps null: false
    end
  end
end
