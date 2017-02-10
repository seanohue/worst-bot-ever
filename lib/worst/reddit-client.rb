require 'redd'

module Worst
  module Bot
    class RedditClient

      def initialize()

        @client = Redd.it(:script, 
          ENV["REDDIT_CLIENT_ID"], 
          ENV["REDDIT_SECRET"], 
          ENV["REDDIT_USERNAME"], 
          ENV["REDDIT_PASSWORD"], 
          user_agent: "OSX:badgamedevbot:v0.1.0:#{ENV["REDDIT_USERNAME"]}"
        )

        @client.authorize!
      end

      def get_hot_posts(subreddit)
        @client.get_hot(subreddit)
          .select { |link| link.is_self == true }
          .map { |link| "${link.title} ${link.selftext}".gsub(/[^0-9a-z]/i, '') }
      end

    end
  end
end