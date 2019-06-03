json.extract! campground, :id, :name, :total_sites, :address, :dates_open, :directions, :contact_info, :description, :electric, :latitude, :longitude, :created_at, :updated_at
json.url campground_url(campground, format: :json)
