module AlbumsHelper

  def no_artist_selected?
    !params[:artist_id]
  end

  def author_viewing?
    current_user && @album.user_id == current_user.id
  end

  def release_date_display(object)
    object.release_date ? object.release_date : "???"
  end

end