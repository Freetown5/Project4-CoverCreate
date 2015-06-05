class CreateBasics < ActiveRecord::Migration
  def change
    create_table :basics do |t|
      t.string :yname
      t.text :ycity
      t.string :yphone
      t.string :yemail

      t.timestamps null: false
    end
  end
end
