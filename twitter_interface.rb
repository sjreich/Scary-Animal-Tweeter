require 'Twitter'
require_relative 'secrets'

class TwitterAccount
  class << self
    def post(message, filepath)
      CLIENT.update_with_media(message, File.new(filepath)) 
    end

    CLIENT = Twitter::REST::Client.new do |config|
      config.consumer_key        = Secrets::CONSUMER_KEY
      config.consumer_secret     = Secrets::CONSUMER_SECRET
      config.access_token        = Secrets::ACCESS_TOKEN
      config.access_token_secret = Secrets::ACCESS_TOKEN_SECRET
    end
  end
end
