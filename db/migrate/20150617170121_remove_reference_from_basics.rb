class RemoveReferenceFromBasics < ActiveRecord::Migration
  def change
    remove_column :basics, :reference, :string
  end
end
