class List < ApplicationRecord
  #associations
  has_many :bookmarks
  #validations
  validates :name, presence: true, uniqueness: true
end
