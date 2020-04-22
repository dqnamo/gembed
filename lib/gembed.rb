class Gembed
  def self.loom(url)
    result = "<div style='position: relative; padding-bottom: 62.5%; height: 0;'><iframe src='#{url.gsub("/share/", "/embed/")}'' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen style='position: absolute; top: 0; left: 0; width: 100%; height: 100%;'></iframe></div>"
    if result.respond_to?(:html_safe)
      result.html_safe
    else
      result
    end  
  end
end