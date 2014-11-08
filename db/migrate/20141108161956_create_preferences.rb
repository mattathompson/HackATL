class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.integer :client_id
      t.integer :user_id
      t.datetime :created_at
    end
  end
end
