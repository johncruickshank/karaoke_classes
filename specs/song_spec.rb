require("minitest/autorun")
require("minitest/rg")

require_relative("../song")

class TestSong < MiniTest::Test

  def setup()
    @song1 = Song.new("Waves", "Kanye West")
  end

  def test_get_title()
    assert_equal("Waves", @song1.get_title)
  end

  def test_get_artist()
    assert_equal("Kanye West", @song1.get_artist)
  end





end
