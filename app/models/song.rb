class Song < ActiveRecord::Base

  has_many :song_shows
  has_many :shows, through: :song_shows

  validates :name, presence: true

  def playcount
    self.performances.count
  end


end