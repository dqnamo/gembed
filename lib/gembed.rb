Dir[File.join(__dir__, 'gembed', '*.rb')].each { |file| require file }

module Gembed

  # Hash of source classes
  @sources = Hash[
    "loom.com" => Loom
  ]

  class << self
    def insert(url)
      @sources[find_source(url)].embed(url)
    end

    # Gets domain of the url
    def find_source(url)
      source = url.match(/\/\/[www.]*[a-zA-Z0-9]*\.[a-z]*/).to_s.gsub(/\/\/[www.]*/,'')
    end
  end
end