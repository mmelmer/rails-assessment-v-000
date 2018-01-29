class ArtistsController < ApplicationController
  
  def index
    @aritst = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

end