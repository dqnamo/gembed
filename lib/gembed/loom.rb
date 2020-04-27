module Gembed
  class Loom
    def self.embed(url)
      result = "<div style='position: relative; padding-bottom: 62.5%; height: 0;'><iframe src='https://www.loom.com/embed/#{find_id(url)}' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen style='position: absolute; top: 0; left: 0; width: 100%; height: 100%;'></iframe></div>"
      result.respond_to?(:html_safe) ? result.html_safe : result
    end

    def self.find_id(url)
      url.split("share/")[1]
    end
  end
end
