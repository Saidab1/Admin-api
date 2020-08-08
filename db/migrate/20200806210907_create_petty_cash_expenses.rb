class CreatePettyCashExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :petty_cash_expenses do |t|
      t.integer :invoice_number
      t.decimal :total_amount
      t.date :expense_date
      t.string :description
      t.string :paid_to

      t.timestamps
    end
  end
end
