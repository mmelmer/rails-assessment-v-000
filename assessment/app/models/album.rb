class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  has_many :albums_genres
  has_many :genres, through: :albums_genres
end
