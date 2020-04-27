module Gembed
  class Youtube
    def self.embed(url)
      result = "<div style='position: relative; padding-bottom: 62.5%; height: 0;'><iframe width='100%' height='100%' src='https://www.youtube.com/embed/#{find_id(url)}' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen style='position: absolute; top: 0; left: 0; width: 100%; height: 100%;'></iframe></div>"
      result.respond_to?(:html_safe) ? result.html_safe : result
    end

    def self.find_id(url)
      id = ''
      url = url.gsub(/(>|<)/i,'').split(/(vi\/|v=|\/v\/|youtu\.be\/|\/embed\/)/)
      if url[2] != nil
        id = url[2].split(/[^0-9a-z_\-]/i)
        id = id[0];
      else
        id = url;
      end
      id
    end
  end
end
