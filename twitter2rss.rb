require 'twitter'
require 'builder'
require 'sinatra'

get '/rss/:name' do
  @screen_name = params[:name]
  @tweets = Twitter.user_timeline(@screen_name)
  builder :rss
end
