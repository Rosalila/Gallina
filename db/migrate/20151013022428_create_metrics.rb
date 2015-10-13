class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.integer :gallina_id
      t.string :name
      t.text :description
      t.integer :weight

      t.timestamps null: false
    end
  end
end
