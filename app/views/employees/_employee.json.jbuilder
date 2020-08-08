json.extract! employee, :id, :name, :last_name, :date_birth, :address, :type_doc_id, :doc_id_number, :job_position, :job_area, :hiring_date, :email, :created_at, :updated_at
json.url employee_url(employee, format: :json)
