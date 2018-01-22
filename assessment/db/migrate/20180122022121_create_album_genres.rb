class CreateAlbumGenres < ActiveRecord::Migration
  def change
    create_table :album_genres do |t|
      t.belongs_to :album
      t.belongs_to :genre
    end
  end
end
