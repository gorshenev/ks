class AddCollumnToUser < ActiveRecord::Migration
  def change

    add_column :users, :birthdate, :datetime
    add_column :users, :phone, :string
    add_column :users, :company, :string
    add_column :users, :post, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :region, :string
    add_column :users, :info, :string



    add_index :users, :birthdate
    add_index :users, :phone
    add_index :users, :company
    add_index :users, :post
    add_index :users, :city
    add_index :users, :country
    add_index :users, :region
    add_index :users, :info
  end
end
