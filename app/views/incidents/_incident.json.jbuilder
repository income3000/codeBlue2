json.extract! incident, :id, :title, :story, :comment, :created_at, :updated_at
json.url incident_url(incident, format: :json)
