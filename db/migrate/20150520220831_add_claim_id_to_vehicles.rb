class AddClaimIdToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :claim_id, :integer
  end
end
