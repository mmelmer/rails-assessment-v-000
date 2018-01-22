class Artist < ActiveRecord::Base
  has_many :artists_genres
  has_many :genres, through: :artists_genres
end
