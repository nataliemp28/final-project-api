CarrierWave.configure do |config|

  config.fog_credentials = {
    :provider => "AWS",
    :region => "eu-west-1",
    :aws_access_key_id => ENV['P4_AWS_ACCESS_KEY'],
    :aws_secret_access_key => ENV['P4_AWS_SECRET_KEY']
  }

  if Rails.env.production?
    config.root = Rails.root.join('tmp')
    config.cache_dir = "#{Rails.root}/temp/uploads"
  end

  config.fog_directory = ENV['P4_AWS_BUCKET_NAME']
end
