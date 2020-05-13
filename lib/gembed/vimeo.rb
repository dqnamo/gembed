module Gembed 
  class Vimeo
    def self.embed(url, height: "100%", width: "100%")
      result = "<iframe src='https://player.vimeo.com/video/#{find_id(url)}?title=0&byline=0&portrait=0' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen style='position: absolute; top: 0; left: 0; width: #{width}; height: #{height};'></iframe>"
      result.respond_to?(:html_safe) ? result.html_safe : result
    end

    def self.find_id(url)
      url.split("vimeo.com/")[1]
    end
  end
end