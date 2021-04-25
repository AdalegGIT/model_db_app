class Track < ApplicationRecord
  # belongs_to :album
  # belongs_to :genre
  # belongs_to :media_type
  # has_and_belongs_to_many :playlists
  SHORT = 180000
  LONG = 360000
  def self.short
    where("milliseconds < ?",SHORT)
  end

  def self.long
    where("milliseconds >= ?",LONG)
  end

  def self.medium
    where("milliseconds >= ?",SHORT).where("milliseconds < ?", LONG)
    # where("milliseconds >= ? AND milliseconds < ?", 180000 , 360000)
  end
end
