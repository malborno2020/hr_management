json.extract! employee, :id, :name, :telephone, :rut, :hire_date, :status, :birth_date, :role_id, :business_id, :address_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
