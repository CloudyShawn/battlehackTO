class Tableadss < ActiveRecord::Migration
  def self.up
    create_table :subcategories do |t|
      t.integer  :macro
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :charities do |t|
      t.integer  :catID
      t.string   :name
      t.string   :info
      t.string   :description
      t.decimal  :amntraised
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :macrocategories do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :user_transacts do |t|
      t.integer  :uID
      t.decimal  :amount
      t.integer  :cID
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :transparency_reports do |t|
      t.integer  :charityID
      t.integer  :userID
      t.string   :report
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :charity_transacts do |t|
      t.decimal  :amount
      t.integer  :cID
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :subcategories
    drop_table :charities
    drop_table :macrocategories
    drop_table :user_transacts
    drop_table :transparency_reports
    drop_table :charity_transacts
  end
end
