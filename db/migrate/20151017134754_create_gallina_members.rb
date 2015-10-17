class CreateGallinaMembers < ActiveRecord::Migration
  def change
    create_table :gallina_members do |t|
      t.integer :gallina_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
