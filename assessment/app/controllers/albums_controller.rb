class AlbumsController < ApplicationController
  
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
    @artist = Artist.new
    @genre = Genre.new
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
          genres_attributes: [:id, :name],
          artist_attributes: [:id, :name]
        )
    end

end