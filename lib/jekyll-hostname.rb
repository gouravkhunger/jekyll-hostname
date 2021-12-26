require 'uri'

module Jekyll
    module JekyllHostname
      def host(input)
        URI.parse(input).host
      end
    end
end

Liquid::Template.register_filter(Jekyll::JekyllHostname)
