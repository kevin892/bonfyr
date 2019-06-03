class User < ApplicationRecord
  has_many :campgrounds
  has_many :reviews, through: :campgrounds
end
