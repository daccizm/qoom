class RemoveAccountFromRooms < ActiveRecord::Migration
  def up
    remove_column :rooms, :account
  end

  def down
    add_column :rooms, :account, :string
  end
end
