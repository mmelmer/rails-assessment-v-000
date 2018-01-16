class AddOriginalToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :original, :boolean
  end
end
