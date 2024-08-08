class Bookmark < ApplicationRecord
  #associations
  belongs_to :list
  belongs_to :movie

  #validations
  validates :list_id, presence: true
  validates :movie_id, presence: true
  validates :comment, presence: true, length: {minimum: 5}
end
