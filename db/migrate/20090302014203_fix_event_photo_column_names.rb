class FixEventPhotoColumnNames < ActiveRecord::Migration
  def self.up
    rename_column :event_photos, :file_name, :photo_file_name
    rename_column :event_photos, :content_type, :photo_content_type
    rename_column :event_photos, :file_size, :photo_file_size
    add_column :event_photos, :photo_updated_at, :datetime
  end

  def self.down
    rename_column :event_photos, :photo_file_name, :file_name
    rename_column :event_photos, :photo_content_type, :content_type
    rename_column :event_photos, :photo_file_size, :file_size
    drop_column :event_photos, :photo_updated_at
  end
end
