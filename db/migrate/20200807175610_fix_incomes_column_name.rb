class FixIncomesColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :incomes, :paid_date, :date
  end
end
