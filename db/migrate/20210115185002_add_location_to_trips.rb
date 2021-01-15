class AddLocationToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :location, :string
    add_column :trips, :lat, :decimal
    add_column :trips, :lng, :decimal
  end
end
