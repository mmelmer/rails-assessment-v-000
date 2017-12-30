class Show < ActiveRecord::Base

  belongs_to :user
  belongs_to :venue
  has_many :performances
  has_many :songs, through: :performances

end