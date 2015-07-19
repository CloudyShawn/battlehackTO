class AddcreditChoicetouserpref < ActiveRecord::Migration
  def change
  	add_column :userprefs, :creditchoice, :string
  end
end
