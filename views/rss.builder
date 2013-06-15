xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Twitter / #{@screen_name}"
    xml.description "Tweets of #{@screen_name}"
    xml.link "http://www.twitter.com/#{@screen_name}"

    @tweets.each do |tweet|
      xml.item do
        text = "#{@screen_name}: #{tweet.text}"
        xml.title text
        xml.description text
        xml.pubDate tweet.created_at.rfc822
        link = "http://www.twitter.com/#{@screen_name}/status/#{tweet.id}"
        xml.link link
        xml.guid link
      end
    end
  end
end
