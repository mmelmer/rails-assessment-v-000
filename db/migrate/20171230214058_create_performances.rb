class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :song_id
      t.integer :show_id
    end
  end
end
