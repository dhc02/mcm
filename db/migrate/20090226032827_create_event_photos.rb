class CreateEventPhotos < ActiveRecord::Migration
  def self.up
    create_table :event_photos do |t|
      t.string :file_name
      t.string :content_type
      t.integer :file_size
      t.integer :event_id
      t.text :caption

      t.timestamps
    end
  end

  def self.down
    drop_table :event_photos
  end
end
