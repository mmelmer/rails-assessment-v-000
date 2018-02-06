class Genre < ActiveRecord::Base
  has_many :album_genres
  has_many :albums, through: :album_genres

  #validates :name, presence: { message: "You have to pick at least 1 genre."}
  #validates :name, uniqueness: true
end
