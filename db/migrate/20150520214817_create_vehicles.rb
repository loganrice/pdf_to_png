class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :body_type
      t.string :color
      t.date :date_of_loss
      t.string :drivetrain
      t.string :engine_size
      t.string :make
      t.string :model
      t.integer :mileage
      t.text :photo_url
      t.string :photo_provided_by
      t.string :transmission
      t.string :vin
      t.integer :year
      
      t.timestamps
    end
  end
end
