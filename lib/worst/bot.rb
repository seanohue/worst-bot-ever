require "worst/bot/version"

module Worst
  module Bot
    class BotRunner

      #TODO: Pull all sources from .yml or .json config
      @@twitter_hashtag_sources = [
        "terriblegameidea",
        "greatgameidea",
        "awfulgameidea",
        "gameidea",
        "mygameidea",
        "gameidea",
        "horrorgameidea",
        "rpgidea",
        "videogameidea",
        "awesomegameidea",
        "coolgameidea",
        "gameconcept",
        "gameprototype"
      ]

      @@subreddit_sources = [
        "gameideas"
      ]

      def initialize(twitter_client, reddit_client)
        @twitter = twitter_client
        @reddit  = reddit_client
      end

      def send(s)
        @twitter.send s
      end

      def get_timeline()
        get_tweet_content(@twitter.get_own_timeline)
      end

      def get_tweet_content(tweets)
        tweets.map { |tweet| "#{tweet.text}" }
      end

      def get_reddit_sources()
        @@subreddit_sources 
          .map { |subreddit| @reddit.get_hot_posts(subreddit) }
          .flatten
      end

      def get_twitter_sources()
        @@twitter_hashtag_sources
          .map { |hashtag| get_tweet_content(@twitter.get_by_hashtag(hashtag)) }
          .map { |tweets| @twitter.remove_spam(tweets) }
          .flatten
      end

    end
  end
end
