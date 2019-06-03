json.extract! photo, :id, :campground_id, :photo, :created_at, :updated_at
json.url photo_url(photo, format: :json)
