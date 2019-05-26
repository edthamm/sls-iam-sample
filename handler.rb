require 'aws-sdk-s3'

s3 = Aws::S3::Resource.new
bucket = s3.bucket(env.BUCKETPREFIX+'-'+env.STAGE+'-sls-testing-bucket')

def hello(event:, context:)
  puts "Event: #{event}"
  puts "Context: #{context}"
  object = bucket.put_object(body: Time.now.utc, key: Time.now)
  object
end
