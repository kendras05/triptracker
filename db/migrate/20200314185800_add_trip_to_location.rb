class AddTripToLocation < ActiveRecord::Migration[6.0]
  def change
    add_reference :trips, :location, null: false, foreign_key: true
  end
end