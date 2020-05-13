require 'minitest/autorun'
require 'gembed'

class GembedTest < Minitest::Test

    # find_source method tests
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

    # Loom tests
    def test_loom_insert
      assert_equal "<iframe src='https://www.loom.com/embed/65592814a0964a99ae881755ff22abfc' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen style='position: absolute; top: 0; left: 0; width: 100%; height: 100%;'></iframe>",
        Gembed.insert("https://www.loom.com/share/65592814a0964a99ae881755ff22abfc")
    end

    def test_loom_find_id
      assert_equal "65592814a0964a99ae881755ff22abfc",
        Gembed.get_id("https://www.loom.com/share/65592814a0964a99ae881755ff22abfc")
    end

    # Youtube tests
    def test_youtube_insert
      assert_equal "<iframe src='https://www.youtube.com/embed/jNQXAC9IVRw' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen style='position: absolute; top: 0; left: 0; width: 100%; height: 100%;'></iframe>",
        Gembed.insert("https://www.youtube.com/watch?v=jNQXAC9IVRw")
    end

    def test_youtube_find_id
      assert_equal "jNQXAC9IVRw",
        Gembed.get_id("https://www.youtube.com/watch?v=jNQXAC9IVRw")
    end

    # Vimeo tests
    def test_vimeo_insert
      assert_equal "<iframe src='https://player.vimeo.com/video/132571771?title=0&byline=0&portrait=0' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen style='position: absolute; top: 0; left: 0; width: 100%; height: 100%;'></iframe>",
        Gembed.insert("https://vimeo.com/132571771")
    end

    def test_vimeo_find_id
      assert_equal "132571771",
        Gembed.get_id("https://vimeo.com/132571771")
    end

    #Other tests
    def test_invalid_url
      assert_equal "<a href='https://www.youtunes.com/watch?v=jNQXAC9IVRw' target='_blank'>https://www.youtunes.com/watch?v=jNQXAC9IVRw</a>",
        Gembed.insert("https://www.youtunes.com/watch?v=jNQXAC9IVRw")
    end
  end