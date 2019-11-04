class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: :release_year }
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, numericality: { less_than_or_equal_to: Date.current.year }, presence: true, if: -> { released }
  validates :artist_name, presence: true
end
