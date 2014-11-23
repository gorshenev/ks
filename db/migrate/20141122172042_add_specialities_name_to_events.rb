class AddSpecialitiesNameToEvents < ActiveRecord::Migration
  def change
    add_column :events, :specialities_name, :integer
    add_index :events, :specialities_name
  end
end
