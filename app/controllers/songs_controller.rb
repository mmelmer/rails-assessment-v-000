class SongsController < ActionController::Base
  
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(params[:id])
  end

end