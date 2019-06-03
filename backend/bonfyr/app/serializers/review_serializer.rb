class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user, :picture, :review_content, :rating
  belongs_to :user
  belongs_to :campground
end
