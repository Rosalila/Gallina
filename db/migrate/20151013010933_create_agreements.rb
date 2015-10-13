class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.integer :gallina_id
      t.text :statement

      t.timestamps null: false
    end
  end
end
