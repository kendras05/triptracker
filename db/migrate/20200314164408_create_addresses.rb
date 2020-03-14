class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.float   :longitude
      t.float   :latitude

      t.timestamps
    end
  end
end
