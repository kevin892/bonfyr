class CampgroundSerializer < ActiveModel::Serializer
  attributes :id, :name, :total_sites, :address, :dates_open, :directions, :contact_info, :description, :electric, :latitude, :longitude, :reviews, :photos
end
