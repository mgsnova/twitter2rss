xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Twitter / #{@screen_name}"
    xml.description "Tweets of #{@screen_name}"
    xml.link "http://www.twitter.com/#{@screen_name}"

    @tweets.each do |tweet|
      xml.item do
        xml.title tweet.text
        xml.description tweet.text
        xml.pubDate tweet.created_at.rfc822
        xml.link "http://www.twitter.com/#{@screen_name}/status/#{tweet.id}"
        xml.guid "http://www.twitter.com/#{@screen_name}/status/#{tweet.id}"
      end
    end
  end
end
