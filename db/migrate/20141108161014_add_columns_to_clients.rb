class AddColumnsToClients < ActiveRecord::Migration
  def change
    add_column :clients, :name, :string
    add_column :clients, :address, :string
    add_column :clients, :city, :string
    add_column :clients, :state, :string
    add_column :clients, :zip, :integer
  end
end
