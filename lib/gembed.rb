require 'gembed/loom.rb'

module Gembed
  class << self
    def insert(url)
      find_source(url)
    end

    def find_source(url)
      source = url.match(/^(?:https?:\/\/)?(?:[^@\/\n]+@)?(?:www\.)?([^:\/?\n]+)/).to_s

      case
      when source.include?("loom.com")
        Loom.embed(url)
      # when source.include?("youtu.be") || provider.include?("youtube.com")
      #   Youtube.embed(url)
      end
    end
  end
end
