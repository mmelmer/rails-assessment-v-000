class Genre < ActiveRecord::Base
  has_many :album_genres
  has_many :albums, through: :album_genres

  validates :name, presence: true
  validates :name, uniqueness: true
end
