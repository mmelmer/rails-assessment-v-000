class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  has_many :album_genres
  has_many :genres, through: :album_genres

  validates :name, presence: true


    def artists_attributes=(artists_attributes)
      artists_attributes.values.each do |artist_attribute|
        if artist_attribute[:name] != ""
          artist = Artist.find_or_create_by(artists_attributes)
          self.artist = artist
        end
      end
    end

    def genres_attributes=(genres_attributes)
      genres_attributes.values.each do |genre_attribute|
        if genre_attribute[:name] != ""
          genre = Genre.find_or_create_by(genres_attributes)
          self.genres << artist
        end
      end
    end


end
