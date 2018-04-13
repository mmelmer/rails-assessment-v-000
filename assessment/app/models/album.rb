class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  has_many :album_genres, dependent: :destroy
  has_many :genres, through: :album_genres

  validates :name, presence: { message: "of the album is required!"}
  validates :name, uniqueness: { message: "has already been entered!"}
  validates :artist, presence: { message: "must be chosen or entered!" }
  validates :genre, uniqueness: { message: "has already been created!"}

  accepts_nested_attributes_for :genres, :artist

  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "300x300" }, :default_url => ":style/default.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  scope :most_popular, -> (limit){ order("counter desc").limit(limit)}
  scope :by_user, ->(user_id){ where("albums.user_id = ?", user_id) }

  def artist_attributes=(artist_attributes)
    #artist_attributes.each do |artist_attribute|
      artist = Artist.find_or_create_by(artist_attributes)
      self.artist = artist
    #end
  end

  def genres_attributes=(genres_attributes)
    #binding.pry
    #genre_attributes.each do |genre_attribute|
    if genres_attributes[:name] != ""
      genre = Genre.find_or_create_by(genres_attributes.values.first)
      self.genres << genre
    end
  end

  def page_count
    self.counter +=1
    self.save
    return self.counter
  end
end
