module Gembed
  class Loom
    def self.embed(url, height: "100%", width: "100%")
      result = "<iframe src='https://www.loom.com/embed/#{find_id(url)}' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen style='position: absolute; top: 0; left: 0; width: #{width}; height: #{height};'></iframe>"
      result.respond_to?(:html_safe) ? result.html_safe : result
    end

    def self.find_id(url)
      url.split("share/")[1]
    end
  end
end
