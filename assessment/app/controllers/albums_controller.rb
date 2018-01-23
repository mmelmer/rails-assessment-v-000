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
    if @album.save
      redirect_to album_path(@album)
    else
      render :new
    end
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