# Importance of Writing Skills For Professional Software Development

### Joe Reich - jreich@covermymeds.com



**Code Sample #1:** 
*bot.rb*
```
require 'net/http'
require 'nokogiri'
require 'Twitter'
require 'open-uri'
 
thing = ['squid', 'cat', 'alligator', 'eel', 'donkey', 'insect'].sample
nokogiri = Nokogiri::HTML(open("https://www.google.com/search?q=scary+#{thing}&tbm=isch"))
url = nokogiri.css('img')[rand(nokogiri.css('img').count)]['src']
f = "#{SecureRandom.hex(4)}.png"
Net::HTTP.get_response(URI(url)) do |r|
  open(f, "wb") { |a| a.write(r.body) }
end
client = Twitter::REST::Client.new do |config|
  config.consumer_key = Secrets::CONSUMER_KEY
  config.consumer_secret = Secrets::CONSUMER_SECRET
  config.access_token = Secrets::ACCESS_TOKEN
  config.access_token_secret = Secrets::ACCESS_TOKEN_SECRET
end
client.update_with_media("This is a scary #{thing}.", File.new(f))
```