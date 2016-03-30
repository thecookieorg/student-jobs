json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :description, :category, :address, :how_to_apply, :company_name, :website, :email, :experience, :working_hours, :compensation
  json.url job_url(job, format: :json)
end
