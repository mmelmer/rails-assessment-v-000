class Song < ActiveRecord::Base

  has_many :performances
  has_many :shows, through: :performances

  validates :name, presence: true

  def playcount
    self.performances.count
  end


end