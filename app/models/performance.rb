class Performance < ActiveRecord::Base
  belongs_to :show
  belongs_to :song
end