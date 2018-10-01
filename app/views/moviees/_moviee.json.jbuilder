json.extract! moviee, :id, :title, :description, :movie_length, :director, :rating, :created_at, :updated_at
json.url moviee_url(moviee, format: :json)
