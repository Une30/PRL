json.array!(@albums) do |album|
  json.extract! album, :id, :caption, :year, :name
  json.url album_url(album, format: :json)
end
