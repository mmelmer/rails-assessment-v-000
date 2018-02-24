class ArtistsController < ApplicationController
  
  def index
    # if params[:user_id]
    #   @artists = Artist.all.select {|artist| artist.user_id == params[:user_id] }
    # else
      @artists = Artist.all
    #end
    
  end

  def show
    @artist = Artist.find(params[:id])
  end

end