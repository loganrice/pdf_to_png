class AddVehicleColumnsToClaim < ActiveRecord::Migration
  def change
    add_column :claims, :body_type, :string
    add_column :claims, :color, :string
    add_column :claims, :date_of_loss, :date
    add_column :claims, :drivetrain, :string
    add_column :claims, :engine_size, :string
    add_column :claims, :make, :string
    add_column :claims, :model, :string
    add_column :claims, :mileage, :integer
    add_column :claims, :photo_provided_by, :string
    add_column :claims, :transmission, :string
    add_column :claims, :vin, :string
    add_column :claims, :year, :integer
    add_column :claims, :claim_id, :integer
  end
end
