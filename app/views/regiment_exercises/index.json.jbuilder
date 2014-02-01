json.array!(@regiment_exercises) do |regiment_exercise|
  json.extract! regiment_exercise, :id
  json.url regiment_exercise_url(regiment_exercise, format: :json)
end
