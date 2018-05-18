class AddNameToAlbumGenres < ActiveRecord::Migration
  def change
    add_column :album_genres, :name, :string
  end
end
