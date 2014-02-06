json.array!(@regiment_requests) do |regiment_request|
  json.extract! regiment_request, :id, :opt1, :opt2, :opt3, :opt4, :opt5, :opt6, :opt7
  json.url regiment_request_url(regiment_request, format: :json)
end
