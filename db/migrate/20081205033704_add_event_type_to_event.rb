class AddEventTypeToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :event_type, :string
  end

  def self.down
    remove_column :events, :event_type
  end
end
