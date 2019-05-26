require 'aws-sdk-s3'
S3 = Aws::S3::Resource.new
BUCKET = S3.bucket(ENV['BUCKET_PREFIX']+'-'+ENV['STAGE']+'-sls-testing-bucket')

def hello(event:, context:)
  puts "Event: #{event.inspect}"
  puts "Context: #{context.inspect}"
  object = BUCKET.put_object(body: Time.now.utc.to_s, key: Time.now.to_s)
  object
end
