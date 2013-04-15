class CreateDemands < ActiveRecord::Migration
  def change
    create_table :demands do |t|
      t.string :content

      t.timestamps
    end
  end
end
