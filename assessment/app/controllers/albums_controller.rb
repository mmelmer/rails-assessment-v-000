class AlbumsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @users = User.all
    @artists = Artist.all
    if !params[:artist_id].blank?
      artist = Artist.find(params[:artist_id])
      @albums = artist.albums
    else
      @albums = Album.all[0..9]
    end
    @popular_albums = Album.most_popular(5)
  end

  def show
    @album = Album.find(params[:id])
    @album.page_count
  end

  def new
    @album = Album.new
  end

  def create
    #raise params.inspect
    @album = Album.new(album_params)
    @album.user_id = current_user.id
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