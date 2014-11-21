class AddColorCollumsToEvens < ActiveRecord::Migration
  def change
    add_column :events, :color, :string
    add_index :events, :color
  end
end
