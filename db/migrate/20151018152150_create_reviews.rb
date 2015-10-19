class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :question_id
      t.integer :reviewer_id
      t.integer :reviewed_id
      t.integer :grade

      t.timestamps null: false
    end
  end
end
