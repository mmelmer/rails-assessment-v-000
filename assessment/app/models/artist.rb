class Artist < ActiveRecord::Base
  has_many :albums, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
