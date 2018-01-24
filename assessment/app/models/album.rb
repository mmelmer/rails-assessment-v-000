class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  has_many :album_genres
  has_many :genres, through: :album_genres

  validates :name, presence: true


    def artist_attributes=(artist_attributes)
      artist_attributes.values.each do |artist_attribute|
        if artist_attribute[:name] !1= ""
          artist = Artist.find_or_create_by(artist_attributes)
          self.artist = artist
        end
      end
    end

    def genre_attributes=(genre_attributes)
      genre_attributes.values.each do |genre_attribute|
        if genre_attribute[:name] !1= ""
          genre = Genre.find_or_create_by(genre_attributes)
          self.genres << artist
        end
      end
    end


end
