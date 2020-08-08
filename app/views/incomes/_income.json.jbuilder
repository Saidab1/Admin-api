json.extract! income, :id, :invoice_number, :ruc_number, :total_amount, :company_name, :description, :paid_date, :created_at, :updated_at
json.url income_url(income, format: :json)
