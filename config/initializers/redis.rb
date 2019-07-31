# $redis = Redis.new(url: ENV["REDIS_URL"])
if Rails.env.production?
    $redis = Redis.new(url: ENV["REDIS_URL"])
    #uri = URI.parse(ENV["REDISTOGO_URL"])
    #REDIS = Redis.new(:url => uri)
end
