json.array!(@abstract_files) do |abstract_file|
  json.extract! abstract_file, :id, :project_id
  json.url abstract_file_url(abstract_file, format: :json)
end
