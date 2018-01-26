class Artist < ActiveRecord::Base
  has_many :artist_genres
  has_many :genres, through: :artist_genres
  has_many :albums

  validates :name, presence: true
  validates :name, uniqueness: true
end
