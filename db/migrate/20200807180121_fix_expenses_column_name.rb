class FixExpensesColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :expenses, :expense_date, :date
  end
end
