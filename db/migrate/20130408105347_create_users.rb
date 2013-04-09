class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account, :null => false, :default => ""

      t.timestamps
    end
    add_index :users, :account, :unique => true
  end
end
