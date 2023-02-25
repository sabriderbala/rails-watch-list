class Bookmark < ApplicationRecord
  has_many_attached :photos
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, scope: :list_id
end
