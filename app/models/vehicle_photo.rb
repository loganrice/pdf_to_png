class VehiclePhoto < ActiveRecord::Base
  belongs_to :claim
  mount_uploader :vehicle, VehicleUploader

end
