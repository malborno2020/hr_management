json.extract! job, :id, :name, :department, :min_salary, :max_salary, :grade_id, :created_at, :updated_at
json.url job_url(job, format: :json)
