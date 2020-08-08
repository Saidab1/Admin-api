json.extract! expense, :id, :category, :total_amount, :expense_date, :company_name, :description, :ruc_number, :created_at, :updated_at
json.url expense_url(expense, format: :json)
