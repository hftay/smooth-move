CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    # aws_access_key_id:     ENV['S3_ACCESS_KEY_ID'],                        # required
    # aws_secret_access_key: ENV['S3_SECRET_ACCESS_KEY'],                        # required
    aws_access_key_id:     'AKIAIPMSH5EMTNRLYZOQ',                        # required
    aws_secret_access_key: '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',                        # required    
    region:                'ap-southeast-2',                  # optional, defaults to 'us-east-1'
    host:                  's3-ap-southeast-2.amazonaws.com',             # optional, defaults to nil
    # endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'wdi-smooth-move'                          # required
  # config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" } # optional, defaults to {}
end

# export S3_ACCESS_KEY_ID=AKIAIPMSH5EMTNRLYZOQ 
# export S3_SECRET_ACCESS_KEY=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 