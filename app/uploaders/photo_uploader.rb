class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :bright_face do
    cloudinary_transformation effect: "brightness:30", radius: 10,
      width: 400, height: 300, crop: :fill
  end
end
