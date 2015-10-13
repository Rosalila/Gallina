class CreateUserAgreements < ActiveRecord::Migration
  def change
    create_table :user_agreements do |t|
      t.integer :user_id
      t.integer :agreement_id
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
