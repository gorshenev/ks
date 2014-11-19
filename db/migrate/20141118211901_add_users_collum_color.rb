class AddUsersCollumColor < ActiveRecord::Migration
  def change
    add_column :users, :color, :string

    add_column :users, :napravlenie, :string

    add_index  :users, :color
    add_index  :users, :napravlenie
  end
end
