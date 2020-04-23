require 'minitest/autorun'
require 'gembed'

class GembedTest < Minitest::Test

    # Testing RegEx & find_source method
    def test_https_url
      assert_equal "test.com",
        Gembed.find_source("https://test.com/abcdef")
    end
  
    def test_http_url
      assert_equal "test.com",
        Gembed.find_source("http://test.com/abcdef")
    end
  
    def test_http_with_www_url
      assert_equal "test.com",
        Gembed.find_source("http://www.test.com/abcdef")
    end

    def test_https_with_www_url
      assert_equal "test.com",
        Gembed.find_source("https://www.test.com/abcdef")
    end

    # Testing Loom
    def test_loom
      assert_equal "<div style='position: relative; padding-bottom: 62.5%; height: 0;'><iframe src='https://www.loom.com/embed/65592814a0964a99ae881755ff22abfc'' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen style='position: absolute; top: 0; left: 0; width: 100%; height: 100%;'></iframe></div>",
        Gembed.insert("https://www.loom.com/share/65592814a0964a99ae881755ff22abfc")
    end
  end