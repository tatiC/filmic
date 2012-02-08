class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.references :film

      t.timestamps
    end
    add_index :quizzes, :film_id
  end
end
