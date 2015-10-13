class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :metric_id
      t.string :sentence

      t.timestamps null: false
    end
  end
end
