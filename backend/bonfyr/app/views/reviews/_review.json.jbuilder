json.extract! review, :id, :user_id, :campground_id, :picture, :review_content, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)
