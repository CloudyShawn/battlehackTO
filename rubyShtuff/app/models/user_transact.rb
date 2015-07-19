class UserTransact < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    uID    :integer
    amount :decimal
    cID    :integer
    timestamps
  end
  attr_accessible :uID, :amount, :cID

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
