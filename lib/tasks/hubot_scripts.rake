namespace :hubot_scripts do
  desc 'fetch hubot_scripts data from Amazon S3'
  task fetch: :environment do
    s3 = AWS::S3.new(
      access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: ENV['AWS_REGION']
    )
    bucket = s3.buckets[ENV['BUCKET_NAME']]
    object = bucket.objects[ENV['OBJECT_KEY']]
    json = JSON.parse object.read
    scripts = json['scripts']

    scripts.each do |script|
      next if HubotScript.exists?(number: script['number'])
      HubotScript.create(
        date: script['date'],
        deprecated: script['deprecated'],
        image: script['image'],
        name: script['name'],
        number: script['number'],
        repository: script['repository']
      )
    end
  end
end
