class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.text :review
      t.date :release_date
      t.integer :artist_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
