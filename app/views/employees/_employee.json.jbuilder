json.extract! employee, :id, :name, :age, :date_of_joining, :designation, :project_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
