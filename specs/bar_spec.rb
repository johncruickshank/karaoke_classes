require("minitest/autorun")
require("minitest/rg")
require_relative("../bar")
require_relative("../room")
require_relative("../guest")
require_relative("../song")

class TestBar < MiniTest::Test

  def setup()
    @song1 = Song.new("Waves", "Kanye West")
    @guest1 = Guest.new("John", @song1, 100)
    @guest2 = Guest.new("Aaron", @song1, 25)
    @guest3 = Guest.new("Jack", @song1, 10)
    @room1 = Room.new(20, [], [@guest1, @guest2], 3)
    @room2 = Room.new(2, [], [@guest1, @guest2, @guest3], 3)
    @bar = Bar.new([@room1])
  end

  def test_add_room()
    assert_equal(2, @bar.add_room(@room1).length())
  end

  ## not needed ##
  # def test_room_open?()
  #   assert_equal(true, @bar.room_open?(@room1))
  # end

  def test_admit_customer()
    actual = @bar.admit_customer(@guest1, @room1)
    assert_equal(3, actual.length)
  end

  def test_admit_customer__no()
    actual = @bar.admit_customer(@guest3, @room2)
    assert_equal("No admittance", actual)
  end

  # def test_space()
  #   assert_equal(true, @room2.space?())
  # end



end
