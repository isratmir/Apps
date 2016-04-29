json.array!(@apps) do |app|
  json.extract! app, :id, :title, :url, :description, :app_type
  json.url app_url(app, format: :json)
end
