class DropUsers < ActiveRecord::Migration
  def self.up
    drop_table "users"
  end

  def self.down
    create_table "users", :force => true do |t|
      t.string   "email"
      t.string   "encrypted_password", :limit => 128
      t.string   "salt",               :limit => 128
      t.string   "token",              :limit => 128
      t.datetime "token_expires_at"
      t.boolean  "email_confirmed",                   :default => false, :null => false
    end
  
    add_index "users", ["token"], :name => "index_users_on_token"
    add_index "users", ["email"], :name => "index_users_on_email"
    add_index "users", ["id", "token"], :name => "index_users_on_id_and_token"

  end
end
