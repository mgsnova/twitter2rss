# twitter2rss

twitter2rss is a [sinatra](http://www.sinatrarb.com/)-based ruby web-app for providing a rss feed of the timeline of a twitter user.

Due to the retirement of the twitter api v1, it seems no longer possible to get a direct rss feed of a users timeline from twitter directly.

This app is an adapter to the v1.1 twitter api and provides a rss feed for users twitter timelines.

It's main aim is to run as a service on [heroku](http://www.heroku.com/) and be used by online rss feed aggregators like [newsblur](http://www.newsblur.com/).

## Example usage with heroku

* [Create](https://dev.twitter.com/apps) a new twitter app and access token for the new app with your existing twitter account.

* Create a [heroku](http://www.heroku.com/) account if you don't have one and install the [heroku commandline tools](https://devcenter.heroku.com/articles/heroku-command).

* Clone this repository to your computer.

* [Create](https://devcenter.heroku.com/articles/git#creating-a-heroku-remote) a new heroku app and add remote location.

* [Deploy](https://devcenter.heroku.com/articles/git#deploying-code) the app.

* Set the following environment variables to your twitter credentials (see first point) via `heroku config:set <the_variable_below>=<your_credential>`.

    TWITTER_CONSUMER_KEY

    TWITTER_CONSUMER_SECRET

    TWITTER_OAUTH_TOKEN

    TWITTER_OAUTH_TOKEN_SECRET

* Now you should be able to retrieve the rss feed with url schema `http://<your_heroku_app_name>.herokuapp.com/rss/<twitter_user_name>` and add this url to a rss aggregator.
