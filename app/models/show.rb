class Show < ActiveRecord::Base

  belongs_to :user
  belongs_to :venue
  has_many :song_shows
  has_many :songs, through: :song_shows

end