class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  has_many :album_genres
  has_many :genres, through: :album_genres

  validates :name, presence: true


    def artist_attributes=(artist_attributes)
      artist_attributes.values.each do |artist_attribute|
        if artist_attribute[:name] != ""
          artist = Artist.find_or_create_by(artist_attributes)
          self.artist = artist
        end
      end
    end

    def genres_attributes=(genres_attributes)
      genres_attributes.values.each do |genre_attribute|
        if genre_attribute[:name] != ""
          genre = Genre.find_or_create_by(genres_attributes)
          self.genres << genre
        end
      end
    end


end
