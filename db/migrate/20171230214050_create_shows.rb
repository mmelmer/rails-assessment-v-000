class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :user_id
      t.integer :venue_id
      t.date :date
    end
  end
end
