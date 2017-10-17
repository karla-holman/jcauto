=begin
Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://h:p75f11d9a4f39faf1277e2582a33d640d82518914d345f86396a213bb3f30e149@ec2-34-206-162-178.compute-1.amazonaws.com:29579' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://h:p75f11d9a4f39faf1277e2582a33d640d82518914d345f86396a213bb3f30e149@ec2-34-206-162-178.compute-1.amazonaws.com:29579' }
end

=end

if Rails.env.production?
  Sidekiq.configure_server do |config|
   config.redis = { url: ENV["REDISTOGO_URL"]}
  end
  Sidekiq.configure_client do |config|
   config.redis = { url: ENV["REDISTOGO_URL"]}
  end
end
