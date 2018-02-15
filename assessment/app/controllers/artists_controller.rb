class ArtistsController < ApplicationController
  
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def narrow_genre
  end

  def narrow_artist
  end

end