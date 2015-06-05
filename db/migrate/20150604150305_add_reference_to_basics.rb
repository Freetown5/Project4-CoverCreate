class AddReferenceToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :reference, :string
  end
end
