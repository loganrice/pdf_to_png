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

	version :pdf_thumb, :if => :pdf_and_not_duplicated? do
	     process :duplicate
	     process :convert => 'png'
	     process :resize_to_limit => [120, 120]
	     process :filename
	  end

	  def pdf_and_not_duplicated?(new_file)
	    if new_file.content_type.include? "/pdf" 
	    	unless new_file.content_type.include? "_converted"
	    		true
	    	else
	    		false
	    	end
	    else
	    	false
	    end
	  end

	  def filename
    	super.chomp(File.extname(super)) + '.png'
  	end

  	def duplicate
  		new_record = self.dup
  		new_record.chomp(File.extname(super)) + '_converted.png'
  		new_record.store
  		# new_record.save ----- if line 45 doesn't work try this one instead
  	end

end
