class AlbumsController < ApplicationController
  
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find_by(id: params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
  end

  private

    def album_params
      params.require(:album).permit(
          :name,
          :review,
          :release_date,
          genre_ids: [],
          genres_attributes: [:name]
          artists_attributes: [:name]
        )
    end

end