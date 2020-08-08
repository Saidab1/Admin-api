class ChangeExpenseColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :expenses, :total_amount, :float
  end
end
