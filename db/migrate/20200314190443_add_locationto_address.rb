class AddLocationtoAddress < ActiveRecord::Migration[6.0]
  def change
    add_reference :locations, :address, null: false, foreign_key: true
  end
end
