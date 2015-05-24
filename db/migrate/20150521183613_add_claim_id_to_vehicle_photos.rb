class AddClaimIdToVehiclePhotos < ActiveRecord::Migration
  def change
    add_column :vehicle_photos, :claim_id, :integer
  end
end
