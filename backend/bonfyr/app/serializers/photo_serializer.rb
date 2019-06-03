class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :photo
  belongs_to :campground
end
