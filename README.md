# Down for everyone or just me? plugin

This plugin uses downforeveryoneorjustme.com to check if a website is
up or down.

## Installation
First install the gem by running:
    [sudo] gem install cinch-downforeveryone

Then load it in your bot:
    require "cinch"
    require "cinch/plugins/downforeveryone"

    bot = Cinch::Bot.new do
      configure do |c|
        # add all required options here
        c.plugins.plugins = [Cinch::Plugins::DownForEveryone] # optionally add more plugins
      end
    end

    bot.start

## Commands
### isitdown/isitup <url>
Check if a website is up or down.

## Options
None.
