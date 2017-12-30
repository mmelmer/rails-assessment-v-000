class Song < ActiveRecord::Base

  has_many :performances
  has_many :shows, through: :performances

end