class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.string :commentable_type
      t.integer :commentable_id
      t.integer :commenter_id

      t.timestamps

    end
  end
end
