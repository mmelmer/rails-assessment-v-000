class AlbumsController < ApplicationController
  
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
    @album.page_count
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

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(album_params)
      redirect_to album_path(@album)
    else
      render :edit
    end
  end

  private

    def album_params
      params.require(:album).permit(
          :name,
          :review,
          :release_date,
          :image,
          :artist_id,
          genre_ids: [],
          genres_attributes: [:name],
          artist_attributes: [:name]
        )
    end

end