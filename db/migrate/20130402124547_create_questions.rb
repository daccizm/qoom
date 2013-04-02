class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :nickname
      t.string :content

      t.timestamps
    end
  end
end
