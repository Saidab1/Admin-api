class ChangePettyCashColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :petty_cash_expenses, :total_amount, :float
  end
end
