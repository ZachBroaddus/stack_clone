class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :body, null: false
      t.integer :asker_id
      t.integer :best_answer_id

      t.timestamps
    end
  end
end
