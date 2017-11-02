CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['S3_ACCESS_KEY_ID'],                        # required
    aws_secret_access_key: ENV['S3_SECRET_ACCESS_KEY'],                        # required
    region:                'ap-southeast-2',                  # optional, defaults to 'us-east-1'
    host:                  's3-ap-southeast-2.amazonaws.com',             # optional, defaults to nil
    endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'wdi-smooth-move'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" } # optional, defaults to {}
end

# class ImageUploader < CarrierWave::Uploader::Base
# end

class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader
 
end