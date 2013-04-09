class AddAccountToRooms < ActiveRecord::Migration
  def change
    change_table :rooms do |t|
      t.string :account, :null => false, :default => ""
    end
    add_index :rooms, :account, :unique => true
  end
end
