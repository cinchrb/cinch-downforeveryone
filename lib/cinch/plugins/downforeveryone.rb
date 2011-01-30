require "mechanize"
module Cinch
  module Plugins
    class DownForEveryone
      include Cinch::Plugin

      def initialize(*args)
        super

        @agent = Mechanize.new
        @agent.user_agent_alias = "Linux Mozilla"
      end

      match(/isit(?:down|up)\?? (.+)/)
      def execute(m, url)
        if up?(url)
          m.reply "It's just you. #{url} is up."
        else
          m.reply "It's not just you! #{url} looks down from here."
        end
      end

      private
      def up?(url)
        url = url.gsub(/^https?:\/\//, '')
        page = @agent.get("http://downforeveryoneorjustme.com/#{url}")
        !!(page.title.split(" -> ").first =~ / Up$/)
      end
    end
  end
end
