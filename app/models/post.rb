class Post < ActiveRecord::Base
  scope :latest, -> (limit = 5) { order(created_at: :desc).limit(limit) }
end
