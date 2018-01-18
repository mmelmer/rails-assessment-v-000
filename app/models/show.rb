class Show < ActiveRecord::Base

  belongs_to :user
  belongs_to :venue
  has_many :song_shows
  has_many :songs, through: :song_shows

  validates :date, presence: true

  def songs_attributes=(song_attributes)
    song_attributes.values.each do |song_attribute|
      song = Song.find_or_create_by(song_attribute)
      self.songs << song
    end
  end
  
end