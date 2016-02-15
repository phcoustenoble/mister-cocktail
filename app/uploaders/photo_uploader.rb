# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :standard do
    resize_to_fit 200, 300
  end

  version :thumb do
    cloudinary_transformation radius: 50,
      width: 150, height: 150, crop: :thumb
  end


end
