class CreateUsersRooms < ActiveRecord::Migration
  def change
    create_table :users_rooms, :id=>false do |t|
      t.references :user
      t.references :room
    end
    add_index :users_rooms, :user_id
    add_index :users_rooms, :room_id
  end
end
