json.extract! job_history, :id, :start_date, :end_date, :employee_id, :job_id, :created_at, :updated_at
json.url job_history_url(job_history, format: :json)
