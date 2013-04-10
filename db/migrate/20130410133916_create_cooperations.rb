class CreateCooperations < ActiveRecord::Migration
  def change
    create_table :cooperations do |t|
      t.string :account, :null => false, :default => ""
      t.references :room

      t.timestamps
    end
    add_index :cooperations, :account, :unique => true
    add_index :cooperations, :room_id
  end
end
