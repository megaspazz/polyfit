json.array!(@regiments) do |regiment|
  json.extract! regiment, :id, :name, :description
  json.url regiment_url(regiment, format: :json)
end
