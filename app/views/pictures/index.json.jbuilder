json.array!(@pictures) do |picture|
  json.extract! picture, :id, :inslide
  json.url picture_url(picture, format: :json)
end