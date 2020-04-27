Dir[File.join(__dir__, 'gembed', '*.rb')].each { |file| require file }

module Gembed

  # Hash of source classes
  @sources = Hash[
    "loom.com" => Loom,
    "youtube.com" => Youtube,
    "youtu.be" => Youtube
  ]

  class << self
    def insert(url)
      source = find_source(url)
      if @sources[source].nil?
        return source_error(url)
      else
        @sources[source].embed(url)
      end
    end

    # Gets domain of the url
    def find_source(url)
      @source = url.match(/\/\/[www.]*[a-zA-Z0-9]*\.[a-z]*/).to_s.gsub(/\/\/[www.]*/,'')
    end

    def source_error(url)
      result = "<a href='#{url}' target='_blank'>#{url}</a>"
      result.respond_to?(:html_safe) ? result.html_safe : result
    end
  end
end
