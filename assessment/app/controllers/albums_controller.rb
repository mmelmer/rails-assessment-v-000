class AlbumsController < ApplicationController
  
  def index
    @albums = Album.all
  end

  def new
    @artist = Arist.new
  end

end