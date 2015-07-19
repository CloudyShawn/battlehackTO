class Charity < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    catID       :integer
    name        :string
    info        :string
    description :string
    amntraised  :decimal
    timestamps
  end
  attr_accessible :catID, :name, :info, :description, :amntraised

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
