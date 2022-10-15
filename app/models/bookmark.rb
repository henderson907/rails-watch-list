class Bookmark < ApplicationRecord
  # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
  validates_uniqueness_of :movie_id, scope: :list_id

  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }
end
