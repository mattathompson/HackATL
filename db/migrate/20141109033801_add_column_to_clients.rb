class AddColumnToClients < ActiveRecord::Migration
  def change
    add_column :clients, :color1, :string
    add_column :clients, :color2, :string
    add_column :clients, :color3, :string
  end
end
