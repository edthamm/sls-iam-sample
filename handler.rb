require 'aws-sdk-s3'


def hello(event:, context:)
  s3 = Aws::S3::Resource.new
  bucket = s3.bucket(ENV['BUCKET_PREFIX']+'-'+ENV['STAGE']+'-sls-testing-bucket')
  puts "Event: #{event.inspect}"
  puts "Context: #{context.inspect}"
  object = bucket.put_object(body: Time.now.utc.to_s, key: Time.now.to_s)
  object
end
