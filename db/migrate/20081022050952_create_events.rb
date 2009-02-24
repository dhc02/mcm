class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.text :body
      t.boolean :public
      t.string :created_by
      t.string :updated_by
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
