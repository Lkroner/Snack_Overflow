class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, :null => false
      t.integer :score, :default => 0
      t.integer :feedback_id
      t.string :feedback_type
      t.integer :user_id

      t.timestamps
    end
  end
end
