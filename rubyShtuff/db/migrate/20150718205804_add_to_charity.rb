class AddToCharity < ActiveRecord::Migration
  def change
  	add_column :charities, :logo, :string
  	add_column :charities, :location, :string
  end
end
