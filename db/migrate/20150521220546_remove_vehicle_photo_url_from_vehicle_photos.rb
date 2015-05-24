class RemoveVehiclePhotoUrlFromVehiclePhotos < ActiveRecord::Migration
  def change
    remove_column :vehicle_photos, :vehicle_photo_url
    add_column :vehicle_photos, :vehicle, :string
  end
end
