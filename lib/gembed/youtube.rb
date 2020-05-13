module Gembed
  class Youtube
    def self.embed(url, height: "100%", width: "100%")
      result = "<iframe src='https://www.youtube.com/embed/#{find_id(url)}' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen style='position: absolute; top: 0; left: 0; width: #{width}; height: #{height};'></iframe>"
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
