class AddTotalExpensesToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :total_expenses, :integer, default: 0
  end
end
