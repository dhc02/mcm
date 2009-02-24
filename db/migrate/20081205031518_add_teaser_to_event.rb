class AddTeaserToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :teaser, :text
  end

  def self.down
    remove_column :events, :teaser
  end
end
