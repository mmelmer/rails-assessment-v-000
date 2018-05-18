class Artist < ActiveRecord::Base
  has_many :albums, dependent: :destroy

  validates :name, presence: true

  scope :most_popular, ->(limit){ order("artist.albums.count desc")}

end
