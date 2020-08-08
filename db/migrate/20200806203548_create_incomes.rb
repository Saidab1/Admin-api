class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.integer :invoice_number
      t.integer :ruc_number
      t.decimal :total_amount
      t.string :company_name
      t.string :description
      t.date :paid_date

      t.timestamps
    end
  end
end
