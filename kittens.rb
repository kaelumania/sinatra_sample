require 'sinatra'
require 'open-uri'

KITTENS = [
  'https://upload.wikimedia.org/wikipedia/commons/b/ba/4_Abyssian_kittens.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/6/69/Four_sleeping_kittens.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/7/7d/4_Kittens.jpg'
]

get '/' do
  send_file open(KITTENS.sample),
        type: 'image/jpeg',
        disposition: 'inline'
end
