require "uri"
require "jekyll"

module Jekyll
    module JekyllHostname

      def hostname(input)
        URI.parse(input).host
      end

    end
end

Liquid::Template.register_filter(Jekyll::JekyllHostname)
