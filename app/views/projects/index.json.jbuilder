json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :research_id
  json.url project_url(project, format: :json)
end
