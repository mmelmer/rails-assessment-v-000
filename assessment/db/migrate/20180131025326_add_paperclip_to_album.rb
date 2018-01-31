class AddPaperclipToAlbum < ActiveRecord::Migration
  def change
    add_attachment :albums, :image
  end
end
