class ChangeTypeToEventType < ActiveRecord::Migration
  def self.up
    remove_column :events, :type
  end

  def self.down
    add_column :events, :type, :string
  end
end
