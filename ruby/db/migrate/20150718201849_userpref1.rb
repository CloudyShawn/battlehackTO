class Userpref1 < ActiveRecord::Migration
  def self.up
    create_table :userprefs do |t|
      t.integer  :cID
      t.integer  :uID
      t.integer  :percent
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :userprefs
  end
end
