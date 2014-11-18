class AddCollumnsEvents < ActiveRecord::Migration
  def change

    add_column :events, :starts_at, :datetime
    add_column :events, :ends_at, :datetime
    add_column :events, :all_day, :boolean


    add_index  :events, :starts_at
    add_index  :events, :ends_at
    add_index  :events, :all_day

  end
end
