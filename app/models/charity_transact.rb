class CharityTransact < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    amount :decimal
    cID    :integer
    timestamps
  end
  attr_accessible :amount, :cID

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
