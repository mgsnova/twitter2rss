require 'twitter'
require 'builder'
require 'sinatra'

get '/rss/:name' do
  @screen_name = @name_for_url = params[:name]
  @tweets = Twitter.user_timeline(@screen_name)
  builder :rss
end

get '/rss/self/home_timeline' do
  @tweets = Twitter.home_timeline
  @name_for_url = ""
  @screen_name = "home timeline"
  builder :rss
end
