class CreateRoomsQuestions < ActiveRecord::Migration
  def change
    create_table :rooms_questions, :id=>false do |t|
      t.references :room
      t.references :question
    end
    add_index :rooms_questions, :room_id
    add_index :rooms_questions, :question_id
  end
end
