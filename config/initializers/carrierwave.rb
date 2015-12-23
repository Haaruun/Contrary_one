CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'    
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIF7BFM3IMSRIX2TA',                        # required
    aws_secret_access_key: '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',                        # required
  }
  config.fog_directory  = 'contraryone'                          # required
end