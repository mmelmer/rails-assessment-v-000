module AlbumsHelper

  def no_artist_selected?
    !params[:artist_id]
  end

end