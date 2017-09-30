require("minitest/autorun")
require("minitest/rg")

require_relative("../guest")
require_relative("../song")

class TestGuest < MiniTest::Test

  def setup()
    @song1 = Song.new("Waves", "Kanye West")
    @guest1 = Guest.new("John", @song1, 100)
  end

  def test_get_name()
    assert_equal("John", @guest1.get_name())
  end

  # def test_get_fave_song()
  #   expected = @song1
  #   assert_equal(expected, @guest1.get_fave_song)
  # end

  def test_get_money()
    assert_equal(100, @guest1.get_money())
  end





end
