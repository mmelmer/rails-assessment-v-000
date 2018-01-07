class SongsController < ActionController::Base
  
  def index
    @songs = Song.all
  end

end