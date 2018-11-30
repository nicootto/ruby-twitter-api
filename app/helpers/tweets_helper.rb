module TweetsHelper

  def client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['twitter_api_key']
      config.consumer_secret     = ENV['twitter_api_secret_key']
      config.access_token        = ENV['twitter_access_token']
      config.access_token_secret = ENV['twitter_access_token_secret']
    end
  end

  def user_tweets(user)
    client.user_timeline(user)
  end

end
