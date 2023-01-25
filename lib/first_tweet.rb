# Ligne très importante qui appelle la gem.
require 'twitter'

# N'oublie pas les lignes pour Dotenv ici…
  
# Quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  #config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

# Ligne qui permet de tweeter sur ton compte
client.update('Mon premier tweet en Ruby !!!!')