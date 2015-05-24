class CreateVehiclePhotos < ActiveRecord::Migration
  def change
    create_table :vehicle_photos do |t|
      t.string :vehicle_photo_url
      t.integer :vehicle_id

      t.timestamps
    end
  end
end
