class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :campgrounds
  has_many :reviews, through: :campgrounds
end
