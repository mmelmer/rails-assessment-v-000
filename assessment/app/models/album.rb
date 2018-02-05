class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  has_many :album_genres
  has_many :genres, through: :album_genres

  validates :name, presence: true

  validates :artist, presence: true

  accepts_nested_attributes_for :genres


  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    def artist_attributes=(artist_attributes)
      if artist_attributes[:name] != ""
        artist = Artist.find_or_create_by(artist_attributes)
        self.artist = artist
      end
    end




end
