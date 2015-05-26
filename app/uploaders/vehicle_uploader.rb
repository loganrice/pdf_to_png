# encoding: utf-8

class VehicleUploader < CarrierWave::Uploader::Base
	require 'carrierwave/processing/mini_magick'
  include CarrierWave::MiniMagick
  include CarrierWave::RMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_fill => [50, 50]
  end

  version :png_thumb do 
  	process :convert => :png
    process :resize_to_fill => [50, 50]
  end


end
