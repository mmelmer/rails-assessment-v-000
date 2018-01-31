class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  has_many :album_genres
  has_many :genres, through: :album_genres

  validates :name, presence: true

  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }


    def artist_attributes=(artist_attributes)
      if artist_attributes[:name] != ""
        artist = Artist.find_or_create_by(artist_attributes)
        self.artist = artist
      end
    end

    def genres_attributes=(genres_attributes)
      if genres_attributes[:name] != ""
        genre = Genre.find_or_create_by(genres_attributes)
        self.genres << genre
      end
    end


end
