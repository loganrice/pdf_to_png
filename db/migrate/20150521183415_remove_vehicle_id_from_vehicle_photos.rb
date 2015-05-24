class RemoveVehicleIdFromVehiclePhotos < ActiveRecord::Migration
  def change
    remove_column :vehicle_photos, :vehicle_id
  end
end
