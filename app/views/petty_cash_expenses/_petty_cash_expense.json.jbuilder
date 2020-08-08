json.extract! petty_cash_expense, :id, :invoice_number, :total_amount, :expense_date, :description, :paid_to, :created_at, :updated_at
json.url petty_cash_expense_url(petty_cash_expense, format: :json)
