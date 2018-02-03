require 'sinatra'
require 'httparty'

require 'dotenv'
Dotenv.load

get '/' do
  'Hello world!'
end

get '/movies/:imdbid' do |id|
  response = HTTParty.get("http://www.omdbapi.com/?apikey=#{ENV['OMDB_API_KEY']}&i=#{id}&plot=full&r=json")
  title = response['Title']
  title
end
