class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account

      t.timestamps
    end
    add_index :users, :account, :unique => true
  end
end
