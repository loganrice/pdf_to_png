class RemovePhotoUrlFromVehicles < ActiveRecord::Migration
  def change
    remove_column :vehicles, :photo_url
  end
end
