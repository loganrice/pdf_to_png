require 'rails_helper'

describe Claim do 
  it { should have_many :vehicle_photos }  
  it { should accept_nested_attributes_for :vehicle_photos }
end
