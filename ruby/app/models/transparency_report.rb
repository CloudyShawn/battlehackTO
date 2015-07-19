class TransparencyReport < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    charityID :integer
    userID    :integer
    report    :string
    timestamps
  end
  attr_accessible :charityID, :userID, :report

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
