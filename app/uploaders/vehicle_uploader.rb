# encoding: utf-8

class VehicleUploader < CarrierWave::Uploader::Base
	require 'carrierwave/processing/mini_magick'
  include CarrierWave::MiniMagick
  include CarrierWave::RMagick changed

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_fill => [50, 50]
  end

	version :pdf_thumb, :if => :pdf? do
	     process :duplicate
	     process :convert => 'png'
	     process :resize_to_limit => [120, 120]
	     process :filename
	  end

	  def pdf?(new_file)
	    new_file.content_type.include? "/pdf"
	  end

	  def filename
    	super.chomp(File.extname(super)) + '.png'
  	end

  	def duplicate
  		new_record = self.dup
  		new_record.save
  	end

end
