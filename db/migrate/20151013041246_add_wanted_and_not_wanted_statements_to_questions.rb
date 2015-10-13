class AddWantedAndNotWantedStatementsToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :wanted_statement, :string
    add_column :questions, :not_wanted_statement, :string
  end
end
