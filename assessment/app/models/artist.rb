class Artist < ActiveRecord::Base
  has_many :albums

  validates :name, presence: true
  validates :name, uniqueness: true
end
