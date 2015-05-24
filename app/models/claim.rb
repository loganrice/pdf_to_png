class Claim < ActiveRecord::Base
  has_many :vehicle_photos
  accepts_nested_attributes_for :vehicle_photos, allow_destroy: true

end
