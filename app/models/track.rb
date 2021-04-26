class Track < ApplicationRecord
  # belongs_to :album
  # belongs_to :genre
  # belongs_to :media_type
  # has_and_belongs_to_many :playlists
  SHORT = 180000
  LONG = 360000

  
  scope :starts_with, -> (char) {where('name ILIKE ?', "#{char}%")}
  scope :short, -> {shorter_than(SHORT)}
  scope :long, -> {longer_than_or_equal_to(LONG)}
  scope :medium, -> {longer_than_or_equal_to(SHORT).shorter_than(LONG)}
  scope :shorter_than, -> (milliseconds) {
    where("milliseconds < ?", milliseconds) if (milliseconds && milliseconds > 0)
    }
  scope :longer_than_or_equal_to, -> (milliseconds) {
    where("milliseconds >= ?",milliseconds) if (milliseconds && milliseconds > 0)
  }
  
end
