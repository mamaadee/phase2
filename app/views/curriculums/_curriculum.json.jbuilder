json.extract! curriculum, :id, :name, :description, :min_rating, :max_rating, :active, :created_at, :updated_at
json.url curriculum_url(curriculum, format: :json)
