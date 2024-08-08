class Movie < ApplicationRecord
  #associations
  has_many :bookmarks

  #validations
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  before_destroy :ensure_no_bookmarks
end

private

def ensure_no_bookmarks
  if bookmarks.exists?
    errors.add(:base, "Cannot delete a movie with bookmarks")
    throw(:abort)
  end
end
