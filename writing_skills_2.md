**Code Sample 2:** 
*scary_animal_tweeter.rb*
```
require_relative 'twitter_interface'
require_relative 'google_interface'
require_relative 'image_downloader'

class ScaryAnimalTweeter
  def tweet
    animal = ANIMALS.sample

    image_url = Google.image_search(animal).sample

    saved_image = ImageDownloader.download(image_url)
    
    TwitterAccount.post(message(animal), saved_image)
  end

  def message(animal)
    "This is a scary #{animal}!"
  end

  ANIMALS = ['squid', 'cat', 'emu', 'eel', 'donkey', 'brontosaurus']
end

ScaryAnimalTweeter.new.tweet
```
*google_interface.rb*
```
require 'net/http'
require 'nokogiri'

class Google
  class << self
    def image_search(search_text)
      search_results = search(search_text)
      extract_image_urls(search_results)
    end

    def search(search_text)
      host = 'www.google.com'
      path = '/search'
      query = "?tbm=isch&q=#{search_text}"
      Net::HTTP.get_response(host, path + query).body
    end

    def extract_image_urls(search_results)
      imgs = Nokogiri::HTML(search_results).css('img')
      imgs.map { |img| img['src'] }
    end
  end
end
```
*image_downloader.rb*
```
require 'net/http'
require 'open-uri'
require 'SecureRandom'

class ImageDownloader
  class << self
    def download(url)
      image_data = get_image_data(url)
      filename = random_filename

      save(filename, image_data)
      
      filename
    end

    def get_image_data(url)
      Net::HTTP.get_response(URI(url)).body
    end

    def save(filename, data)
      open(filename, 'wb') do |file|
        file.write(data)
      end
    end

    def random_filename
      "#{SecureRandom.hex(4)}.png"
    end
  end
end
```
*twitter_interface.rb*
```
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
```