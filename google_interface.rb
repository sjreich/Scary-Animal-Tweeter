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