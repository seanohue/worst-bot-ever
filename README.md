# Worst::Bot

This is a (soon-to-be) configurable Twitter bot.
WorstBot scrapes from tweets and subreddits, using a Markov chain to spam awful Frankentweets compiled from whatever sources you give it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'worst-bot'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install worst-bot

## Usage

Right now, I just use it by doing `bundle-exec bin/console` from the base of this repo.
But that's because I'm lazy.
Eventually, this will include directions for running it as a service or programmatically within a different Ruby app.

Note that in order to use it in this fashion, you must have an .rbenv-vars file in the root directory with the following:
```
TWITTER_CONSUMER_KEY=key_goes_here
TWITTER_CONSUMER_SECRET=secret_goes_here
TWITTER_ACCESS_TOKEN=access_token_goes_here
TWITTER_ACCESS_SECRET=access_secret_goes_here

REDDIT_CLIENT_ID=client_id_goes_here
REDDIT_SECRET=secret_goes_here
REDDIT_USERNAME=username_here
REDDIT_PASSWORD=password_here
```

So, you must have a developer account on both platforms in order to use WorstBot.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will ~allow you to experiment~ tweet things.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/seanohue/worst-bot-ever.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

