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