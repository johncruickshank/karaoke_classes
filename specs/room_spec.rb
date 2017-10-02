require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")

class TestRoom < MiniTest::Test

  def setup()
    @song1 = Song.new("Waves", "Kanye West")
    @song2 = Song.new("Fade", "Kanye West")
    @song3 = Song.new("Reminder", "Jay Z")
    @song4 = Song.new("Superman", "Eminem")
    @song5 = Song.new("Humble", "Kendrick")
    @guest1 = Guest.new("John", @song1, 100)
    @guest2 = Guest.new("Aaron", @song2, 25)
    @guest3 = Guest.new("Jack", @song3, 10)
    @room1 = Room.new(20, [], [@guest1, @guest2], 3)
    @room2 = Room.new(2, [], [@guest1, @guest2, @guest3], 3)
  end

  def test_add_song()
    assert_equal(1, @room1.add_song(@song1).length())
  end

  def test_add_guest()
    assert_equal(3, (@room1.add_guest(@guest3)).length())
  end

  def test_remove_guest()
    assert_equal(1, @room1.remove_guest(@guest1).length())
  end

  def test_can_afford?()
    assert_equal(true, @room1.can_afford?(@guest1))
  end

  def test_can_afford__no()
    assert_equal("No bling, no sing", @room1.can_afford?(@guest3))
  end

  def test_space?()
    assert_equal(true, @room1.space?())
  end

  def test_space__false()
    assert_equal("Sorry, room is full", @room2.space?())
  end

end
