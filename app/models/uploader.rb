class MyUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "#{APP_ROOT}/public/images/"
  end

end