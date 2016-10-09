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