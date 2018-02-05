class AddCounterToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :counter, :integer, default: 0
  end
end
