class RenamePerformancesToSongShows < ActiveRecord::Migration
  def change
    rename_table :performances, :song_shows
  end
end
